# your MODELS inherit from ActiveRecord::Base class
# require 'instagram'

class Post < ActiveRecord::Base
  include Instagram

  # def get_insta_photo(word)
  #   Instagram.get_insta_photo(word)
  # end


 def get_photo(word)
    #url = "https://api.instagram.com/v1/tags/#{word}/media/recent?access_token=51067521.f59def8.6ef9f6339ddc413b953086f6def34593"
    url = "https://api.instagram.com/v1/tags/#{word}/media/recent?access_token=51067521.f59def8.2e50ba5c72734b6198f33a364b998c5a"
    response = HTTParty.get(url)
    image_url = response["data"][0]["images"]["standard_resolution"]["url"]

    image_url
  end

end

# get_insta_photo(@post.word_1)
