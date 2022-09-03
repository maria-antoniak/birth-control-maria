# TO RUN THIS SCRIPT make sure to use a Python environment set up for Prodigy!

# prodigy CLASS_TYPE DB_NAME DATA_PATH --label "LABEL"

# LABELS = SEEKING INFORMATIONAL SUPPORT, 
#          PROVIDING INFORMATIONAL SUPPORT
#          SEEKING EMOTIONAL SUPPORT,
#          PROVIDING EMOTIONAL SUPPORT,
#          SEEKING EXPERIENCES,
#          PROVIDING EXPERIENCES,
#          DISCOURSE

######################################################

# ALL labels at a time for REDDIT POSTS
# prodigy textcat.manual birth-control-all-labels-reddit /Volumes/Passport-1/data/birth-control/labeling/sampled-reddit-posts.prodigy.jsonl --label labels.txt

# ALL labels at a time for REDDIT COMMENTS
# prodigy textcat.manual birth-control-all-labels-reddit-comments /Volumes/Passport-1/data/birth-control/labeling/sampled-reddit-comments.prodigy.jsonl --label labels.txt

# ALL labels at a time for WEBMD
# prodigy textcat.manual birth-control-all-labels-webmd /Volumes/Passport-1/data/birth-control/labeling/sampled-webmd-reviews.prodigy.jsonl --label labels.txt

# ALL labels at a time for TWITTER POSTS
# prodigy textcat.manual birth-control-all-labels-twitter-posts /Volumes/Passport-1/data/birth-control/labeling/sampled-twitter-posts.prodigy.jsonl --label labels.txt

# ALL labels at a time for TWITTER REPLIES
# prodigy textcat.manual birth-control-all-labels-twitter-replies /Volumes/Passport-1/data/birth-control/labeling/sampled-twitter-replies.prodigy.jsonl --label labels.txt

# ALL labels at a time for EXTRA REDDIT COMMENTS / POSTS
prodigy textcat.manual birth-control-all-labels-reddit-extra /Volumes/Passport-1/data/birth-control/labeling/sampled-reddit-extra.prodigy.jsonl --label labels.txt