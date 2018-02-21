class WordService

  def validate(word)
      conn
      response  = conn.get("api/v1/inflections/en/#{word}")
      if "Not Found".in?(response.body)
         return false
      else
        response = JSON.parse(response.body)
        response['results'].first['lexicalEntries'][0]['inflectionOf'][0]['id']
      end
  end

  def conn
    Faraday.new(url:"https://od-api.oxforddictionaries.com") do |faraday|
        faraday.headers['app_id'] = ENV['id']
        faraday.headers['app_key'] = ENV['secret']
        faraday.adapter Faraday.default_adapter
    end
  end

  def json_error(word)
    text = '{"message":  "is not a valid word."}'
     JSON.parse(text)
  end
end
