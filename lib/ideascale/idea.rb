require 'ideascale'

module IdeaScale
  class Idea < Hashie::Dash
    property :id
    property :creationDateTime
    property :title
    property :text
    property :campaignId
    property :authorId
    property :authorInfo
    property :voteCount
    property :myVote
    property :commentCount
    property :url
    property :tags
  end
end
