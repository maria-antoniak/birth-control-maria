import pandas as pd

import little_mallet_wrapper as lmw


data_directory_path = '/Volumes/Passport-1/data/birth-control'
output_directory_path = '/Volumes/Passport-1/output/birth-control'
# topics_directory_path = output_directory_path + '/topics-by-leann/undersampled-posts/old'
topics_directory_path = output_directory_path + '/topics-by-me/under-sampled'

undersampled_path = data_directory_path + '/reddit/pill-iud-implant-sampled-posts.csv'
full_path         = data_directory_path + '/reddit/un-sampled-posts.csv'
twitter_path      = data_directory_

num_topics = 30

path_to_mallet = '/Volumes/Passport-1/packages/mallet-2.0.8/bin/mallet'
path_to_training_data                    = topics_directory_path + '/full.training.txt'
path_to_formatted_training_data          = topics_directory_path + '/full.mallet.training'
path_to_new_topic_distributions          = topics_directory_path + '/full.mallet.topic_distributions.' + str(num_topics)
path_to_original_model                   = topics_directory_path + '/mallet.model.' + str(num_topics)
path_to_original_formatted_training_data = topics_directory_path + '/mallet.training'


print('READING DATA')
full_posts_df = pd.read_csv(full_path)
len(full_posts_df.index)

print('PREPARING DATA')
full_training_data = []
for i, _row in full_posts_df.iterrows():
    if not pd.isnull(_row['text']):
        full_training_data.append(lmw.process_string(_row['text']))
print(len(full_training_data))

print('IMPORTING DATA')
lmw.import_data(path_to_mallet, 
                path_to_training_data, 
                path_to_formatted_training_data, 
                full_training_data, 
                use_pipe_from=path_to_original_formatted_training_data)

print('INFERRING TOPICS')
lmw.infer_topics(path_to_mallet, 
                 path_to_original_model, 
                 path_to_formatted_training_data, 
                 path_to_new_topic_distributions)