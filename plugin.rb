# frozen_string_literal: true

# name: discourse-exempt-from-watched-words
# about: TODO
# meta_topic_id: TODO
# version: 0.0.1
# authors: Discourse
# url: TODO
# required_version: 2.7.0

enabled_site_setting :discourse_exempt_from_watched_words_enabled

module ::DiscourseExemptFromWatchedWords
  PLUGIN_NAME = "discourse-exempt-from-watched-words"
end

require_relative "lib/discourse_exempt_from_watched_words/engine"

after_initialize do
  # Code which should run after Rails has finished booting
end
