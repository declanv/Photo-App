class Post < ActiveRecord::Base
  include HTTParty
    before_create :photo_convert
  def get_photo!(word)
     url = "https://api.instagram.com/v1/tags/#{word}/media/recent?access_token=1315592455.5b9e1e6.25384f70ae7e4dba95691b9e98eed930"
    response = HTTParty.get(url)
    image_url = response["data"][0]["images"]["standard_resolution"]["url"]
    word.gsub!(/#{word}/, image_url)
  end

  private
    def photo_convert
      self.input_1 = get_photo!(self.input_1)
      self.input_3 = get_photo!(self.input_3)
      self.input_5 = get_photo!(self.input_5)
    end
end
