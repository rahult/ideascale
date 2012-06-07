require 'ideascale'

module IdeaScale
  class Campaign < Hashie::Dash
    property :id, required: true
    property :name, required: true
    property :description
    property :api

    def ideas
      api.get "campaigns/#{id}/ideas"
    end

    def recent_ideas
      api.get "campaigns/#{id}/ideas/recent"
    end

    def top_ideas
      api.get "campaigns/#{id}/ideas/top"
    end
  end
end
