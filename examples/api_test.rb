require 'ideascale'
require 'pry'

settings = {
  api_token: "e799da9c-f9e2-427d-8151-a5df194f7ea3",
  community_url: "apitest.ideascale.com"
}

apitest = IdeaScale::RestApi.new(settings)
apitest.log = STDOUT

apitest.campaigns.each do |campaign|
  puts "#{campaign.id} - #{campaign.name}"
end

puts apitest.campaign_ideas(12358)
