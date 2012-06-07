require "ideascale/version"
require "rest_client"
require "hashie"
require 'json'

module IdeaScale
  class RestApi
    attr_accessor :settings

    def initialize(options={})
      default_options = {
        api_version: "v1"
      }

      @settings = options.merge(default_options)
    end

    def api_url
      @api_url ||= "http://#{settings[:community_url]}/a/rest/#{settings[:api_version]}"
    end

    def log=(logger)
      RestClient.log = logger
    end

    def resource(method_value)
      RestClient::Resource.new api_url + method_value
    end

    def response(method_value)
      resource(method_value).get "api_token" => settings[:api_token] do |response, request, result, &block|
        case response.code
        when 200
          response
        else
          response.return!(request, result, &block)
        end
      end
    end

    def get(method_value)
      JSON.parse(response(method_value)).map{ |item| Hashie::Mash.new(item) }
    end

    def campaigns
      get "/campaigns"
    end

    def top_ideas
      get "/ideas/top"
    end

    def recent_ideas
      get "/ideas/recent"
    end

    def campaign_ideas(campaign_id)
      get "/campaigns/#{campaign_id}/ideas"
    end
  end
end
