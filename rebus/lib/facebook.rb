class Instagram

  def self.get_photo(word)
    url = "https://api.instagram.com/v1/tags/#{word}/media/recent?access_token=51067521.f59def8.6ef9f6339ddc413b953086f6def34593"
    response = HTTParty.get(url)

    image_url = response["data"][0]["images"]["standard_resolution"]["url"]

    image_url

  end

end
