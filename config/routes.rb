# frozen_string_literal: true

DiscourseExemptFromWatchedWords::Engine.routes.draw do
  get "/examples" => "examples#index"
  # define routes here
end

Discourse::Application.routes.draw do
  mount ::DiscourseExemptFromWatchedWords::Engine, at: "discourse-exempt-from-watched-words"
end
