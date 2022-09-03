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
# prodigy textcat.manual bc-reddit-posts /Volumes/Passport-1/data/birth-control/labeling/label-sentences/sampled-sentences.prodigy.reddit-posts.jsonl --label labels.txt

# ALL labels at a time for REDDIT COMMENTS
# prodigy textcat.manual bc-reddit-comments /Volumes/Passport-1/data/birth-control/labeling/label-sentences/sampled-sentences.prodigy.reddit-comments.jsonl --label labels.txt

# ALL labels at a time for TWITTER POSTS
# prodigy textcat.manual bc-twitter-posts /Volumes/Passport-1/data/birth-control/labeling/label-sentences/sampled-sentences.prodigy.twitter-posts.jsonl --label labels.txt

# ALL labels at a time for TWITTER REPLIES
prodigy textcat.manual bc-twitter-replies /Volumes/Passport-1/data/birth-control/labeling/label-sentences/sampled-sentences.prodigy.twitter-replies.jsonl --label labels.txt

# ALL labels at a time for WEBMD
# prodigy textcat.manual bc-webmd-reviews /Volumes/Passport-1/data/birth-control/labeling/label-sentences/sampled-sentences.prodigy.webmd-reviews.jsonl --label labels.txt
