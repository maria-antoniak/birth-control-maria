from collections import defaultdict
from datetime import datetime
import json
import os
import pickle
import random

import pandas as pd 
import spacy

import jsonlines


def get_data_dicts(df):
    data_dicts = []
    for i, r in df.iterrows():
        if 'title' in r and not pd.isnull(r['title']):
            data_dicts.append({'text': '[TITLE: ' + r['title'] + '] \n\n' + r['text'],
                               'meta': {'ID': r['id'],
                                        'Source': r['source']}})
        else:
            data_dicts.append({'text': r['text'],
                               'meta': {'ID': r['id'],
                                        'Source': r['source']}})
    return data_dicts


def main():

    start_time = datetime.now()
    script_name = os.path.basename(__file__)

    print(str(datetime.now()) + ' ' + script_name + ': Starting...', flush=True)

    data_directory_path = '/Volumes/Passport-1/data/birth-control/labeling'
    reddit_posts_path    = data_directory_path + '/sampled-reddit-posts.xlsx'
    reddit_comments_path = data_directory_path + '/sampled-reddit-comments.csv'
    webmd_path           = data_directory_path + '/sampled-webmd-reviews.xlsx'
    twitter_posts_path   = data_directory_path + '/sampled-twitter-posts.csv'
    twitter_replies_path = data_directory_path + '/sampled-twitter-replies.csv'
    output_path          = data_directory_path + '/data_to_label.prodigy.jsonl'

    print(str(datetime.now()) + ' ' + script_name + ': Loading data...', flush=True)
    reddit_posts_df = pd.read_excel(reddit_posts_path)
    reddit_comments_df = pd.read_csv(reddit_comments_path)
    webmd_df = pd.read_excel(webmd_path)
    twitter_posts_df = pd.read_csv(twitter_posts_path)
    twitter_replies_df = pd.read_csv(twitter_replies_path)

    print(str(datetime.now()) + ' ' + script_name + ': Combine data...', flush=True)
    reddit_posts_df['source'] = 'reddit-posts'
    reddit_comments_df['source'] = 'reddit-comments'
    webmd_df['source'] = 'webmd'
    twitter_posts_df['source'] = 'twitter-posts'
    twitter_replies_df['source'] = 'twitter-replies'
    combined_df = pd.concat([reddit_posts_df, reddit_comments_df, webmd_df, twitter_posts_df, twitter_replies_df])
    print(str(datetime.now()) + ' ' + script_name + ': Total data: ' + str(len(combined_df.index)), flush=True)

    print(str(datetime.now()) + ' ' + script_name + ': Format data for Prodigy...', flush=True)
    # data_dicts = get_data_dicts(combined_df)
    # with jsonlines.open(output_path, 'w') as writer:
    #     writer.write_all(data_dicts)

    # data_dicts = get_data_dicts(reddit_posts_df)
    # with jsonlines.open(data_directory_path + '/sampled-reddit-posts.prodigy.jsonl', 'w') as writer:
    #     writer.write_all(data_dicts)

    # data_dicts = get_data_dicts(reddit_comments_df)
    # with jsonlines.open(data_directory_path + '/sampled-reddit-comments.prodigy.jsonl', 'w') as writer:
    #     writer.write_all(data_dicts)

    # data_dicts = get_data_dicts(webmd_df)
    # with jsonlines.open(data_directory_path + '/sampled-webmd-reviews.prodigy.jsonl', 'w') as writer:
    #     writer.write_all(data_dicts)

    data_dicts = get_data_dicts(twitter_posts_df)
    with jsonlines.open(data_directory_path + '/sampled-twitter-posts.prodigy.jsonl', 'w') as writer:
        writer.write_all(data_dicts)

    data_dicts = get_data_dicts(twitter_replies_df)
    with jsonlines.open(data_directory_path + '/sampled-twitter-replies.prodigy.jsonl', 'w') as writer:
        writer.write_all(data_dicts)

    print(str(datetime.now()) + ' ' + script_name + ': Run Time = ' + str(datetime.now() - start_time), flush=True)


if __name__ == '__main__':
    main()