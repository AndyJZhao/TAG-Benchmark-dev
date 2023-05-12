import pandas as pd
import numpy as np
from ogb.nodeproppred import DglNodePropPredDataset
import dgl
import copy
import random
import os.path as osp
import argparse

def args_init():
    argparser = argparse.ArgumentParser(
        "Topology augmentation of the text",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter,
    )
    argparser.add_argument(
        "--dataset",
        type=str,
        default='ogbn-arxiv',
        help="Which dataset to be augmented",
    )
    argparser.add_argument("--path", type=str, default=None, required=True, help="Path to save the augmented-text")
    argparser.add_argument("--epochs", type=int, default=5, required=True, help="The sampling runs")
    return argparser

def Toplogy_Augment(text, edge0, edge1):
    edge0 = np.array(edge0)
    edge1 = np.array(edge1)
    assert len(edge0) == len(edge1)
    ans = copy.copy(text)
    for i, j in zip(edge0, edge1):
        ans[i] += ' Neighbour: ' + text[j]
    text = ans
    return text


def load_data(name):
    if name == 'ogbn-arxiv':
        data = DglNodePropPredDataset(name=name)
        graph, labels = data[0]

    elif name == 'amazon-children':
        graph = dgl.load_graphs('/mnt/v-wzhuang/Amazon/Books/Amazon-Books-Children.pt')[0][0]
        labels = graph.ndata['label']

    elif name == 'amazon-history':
        graph = dgl.load_graphs('/mnt/v-wzhuang/Amazon/Books/Amazon-Books-History.pt')[0][0]
        labels = graph.ndata['label']

    elif name == 'amazon-fitness':
        graph = dgl.load_graphs('/mnt/v-wzhuang/TAG-Benchmark/data/amazon/Sports/Fitness/Sports-Fitness.pt')[0][0]
        labels = graph.ndata['label']

    elif name == 'amazon-photo':
        graph = dgl.load_graphs('/mnt/v-wzhuang/TAG-Benchmark/data/amazon/Electronics/Photo/Electronics-Photo.pt')[0][0]
        labels = graph.ndata['label']

    else:
        raise ValueError('Not implemetned')
    return graph, labels

def main():

    argparser = args_init()
    args = argparser.parse_args()
    graph, labels = load_data(name=args.dataset)

    graph.remove_self_loop()
    graph = dgl.to_bidirected(graph)
    neighbours = list(graph.adjacency_matrix_scipy().tolil().rows) # 一阶邻居 获得
    if args.dataset == 'ogbn-arxiv':
        text = pd.read_csv('/mnt/v-wzhuang/TAG-Benchmark/data/ogb/ogbn_arxiv/ogbn-arxiv.txt', sep='\t', header=None)
        text = text[0]
    else:
        pass

    # Augmentation
    new_dataset = []
    for index, text in enumerate(text):
        neighbour = neighbours[index]
        sampled_neighbours = random.sample(neighbour, args.epochs)

        # 将当前节点和每个邻居的文本拼接起来
        for neighbour_id in sampled_neighbours:
            new_text = text + ' ' + text[neighbour_id]

            # 将新数据加入到新数据集中
            new_dataset.append(new_text)
    random.shuffle(new_dataset)
    df = pd.DataFrame(new_dataset)
    # 保存text，text_len 文件
    df.to_csv(args.path, sep='\t', header=None, index=False)


if __name__ == '__main__':
    main()
