require 'ideascale'
require 'pry'

settings = {
  api_token: "e799da9c-f9e2-427d-8151-a5df194f7ea3",
  community_url: "apitest.ideascale.com"
}

apitest = IdeaScale::RestApi.new(settings)
apitest.log = STDOUT

campaigns = apitest.campaigns

campaigns.each do |campaign|
  puts "#{campaign.id} - #{campaign.name}"
end

first_campaign = campaigns.first

puts "Top ideas for Campaign: #{first_campaign.name}"

first_campaign.top_ideas.each do |idea|
  puts "#{idea.id} - #{idea.title}, #{idea.tags}"
end
