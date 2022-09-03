######################################################
# TO RUN THIS SCRIPT make sure to use a Python environment set up for Prodigy!
# MAKE SURE to update the DATA_DIRECTORY_PATH to the folder where your data is located!
######################################################

DATA_DIRECTORY_PATH="/Users/maria/Documents/data/birth-control/labeling/label-discourse"

# ALL labels at a time for REDDIT POSTS
prodigy textcat.manual discourse-reddit-posts $DATA_DIRECTORY_PATH/sampled-sentences.prodigy.reddit-posts.jsonl --label labels.txt

# ALL labels at a time for REDDIT COMMENTS
# prodigy textcat.manual discourse-reddit-comments $DATA_DIRECTORY_PATH/sampled-sentences.prodigy.reddit-comments.jsonl --label labels.txt

# ALL labels at a time for TWITTER POSTS
# prodigy textcat.manual discourse-twitter-posts $DATA_DIRECTORY_PATH/sampled-sentences.prodigy.twitter-posts.jsonl --label labels.txt

# ALL labels at a time for TWITTER REPLIES
# prodigy textcat.manual discourse-twitter-replies $DATA_DIRECTORY_PATH/sampled-sentences.prodigy.twitter-replies.jsonl --label labels.txt

# ALL labels at a time for WEBMD
# prodigy textcat.manual discourse-webmd-reviews $DATA_DIRECTORY_PATH/sampled-sentences.prodigy.webmd-reviews.jsonl --label labels.txt
