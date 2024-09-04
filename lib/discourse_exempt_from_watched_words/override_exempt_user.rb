# frozen_string_literal: true
  # override exempt_user? method from NewPostManager class
  # to exempt users from watched words
    
  require_dependency 'new_post_manager'
  class ::NewPostManager
    def self.exempt_user?(user)
      return true if user&.staff?
      return false unless SiteSetting.discourse_exempt_from_watched_words_enabled
      return false if SiteSetting.exempt_from_watched_words_groups.blank?
      exempt_groups = SiteSetting.exempt_from_watched_words_groups.split('|').map(&:to_i)
      return true if (user.groups.pluck(:id) & exempt_groups).length > 0
      false
    end
  end

