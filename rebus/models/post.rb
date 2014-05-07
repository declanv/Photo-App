# your MODELS inherit from ActiveRecord::Base class

class Post < ActiveRecord::Base
  include Instagram

  # def get_insta_photo(word)
  #   Instagram.get_insta_photo(word)
  # end

end

# get_insta_photo(@post.word_1)
