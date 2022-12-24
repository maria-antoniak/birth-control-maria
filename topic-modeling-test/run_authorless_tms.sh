NUM_TOPICS=30

python authorless-tms/downsample_corpus.py --input /Volumes/Passport-1/output/birth-control/new-topics-by-me/reddit/authorless.texts.$NUM_TOPICS.txt \
                                           --vocab /Volumes/Passport-1/output/birth-control/new-topics-by-me/reddit/authorless.vocab.$NUM_TOPICS.txt \
                                           --output /Volumes/Passport-1/output/birth-control/new-topics-by-me/reddit/authorless.texts.downsampled.$NUM_TOPICS.txt \
                                           --min-doc-length 5

python authorless-tms/downsample_corpus.py --input /Volumes/Passport-1/output/birth-control/new-topics-by-me/twitter/authorless.texts.$NUM_TOPICS.txt \
                                           --vocab /Volumes/Passport-1/output/birth-control/new-topics-by-me/twitter/authorless.vocab.$NUM_TOPICS.txt \
                                           --output /Volumes/Passport-1/output/birth-control/new-topics-by-me/twitter/authorless.texts.downsampled.$NUM_TOPICS.txt \
                                           --min-doc-length 5

python authorless-tms/downsample_corpus.py --input /Volumes/Passport-1/output/birth-control/new-topics-by-me/webmd/authorless.texts.$NUM_TOPICS.txt \
                                           --vocab /Volumes/Passport-1/output/birth-control/new-topics-by-me/webmd/authorless.vocab.$NUM_TOPICS.txt \
                                           --output /Volumes/Passport-1/output/birth-control/new-topics-by-me/webmd/authorless.texts.downsampled.$NUM_TOPICS.txt \
                                           --min-doc-length 5


