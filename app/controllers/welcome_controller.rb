class WelcomeController < ApplicationController
  def index
    # binding.pry
    if params['word']
      conn =  Faraday.new(url:"https://od-api.oxforddictionaries.com") do |faraday|
        faraday.headers['app_id'] = ENV['id']
        faraday.headers['app_key'] = ENV['secret']
        faraday.adapter Faraday.default_adapter
      end
      response = conn.get("api/v1/inflections/en/#{params['word']}")
      response = JSON.parse(response.body)
      root = response['results'].first['lexicalEntries'][0]['inflectionOf'][0]['id']#[1]['inflectionOf'][0]['id']

    end
    
    @root = root
  end

  def show
  end

end
