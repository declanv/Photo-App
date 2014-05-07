require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'
require 'httparty'

# MODELS
require_relative 'models/post'

# LIBRARIES
require_relative 'lib/instagram'

# establishes connection once and for all...
ActiveRecord::Base.establish_connection({
  database: "rebus",
  adapter: "postgresql"
})

get '/' do
  @posts = Post.order(id: :desc)
  # binding.pry
  @post = @posts.last
  erb :index
end

# get '/posts/new' do
#   # shows a form to input new post
#   erb :new
# end

# get '/posts/:id' do
#   # show me a single post with given id
#   @post_id = params[:id]
#   @post = Post.find(@post_id)
#   erb :show
# end

# get '/posts/:id/delete' do
#   # deletes a single post with given id
#   post_id = params[:id]
#   post = Post.find(post_id)
#   post.destroy
#   redirect "/"
#   # "You have deleted #{post_id.to_s}"
# end


 def get_photo(word)
    url = "https://api.instagram.com/v1/tags/#{word}/media/recent?access_token=51067521.f59def8.6ef9f6339ddc413b953086f6def34593"
    response = HTTParty.get(url)

    image_url = response["data"][0]["images"]["standard_resolution"]["url"]

    image_url
  end

post '/posts' do
  # processes new post data
  word_1 = params[:word_1]
  word_2 = params[:word_2]
  word_3 = params[:word_3]
  word_4 = params[:word_4]
  word_5 = params[:word_5]
  Post.create(
    word_1:  word_1,
    word_1_url: get_photo(word_1),
    word_2:  word_2,
    word_2_url:  get_photo(word_2),
    word_3:  word_3,
    word_3_url:  get_photo(word_3),
    word_4:  word_4,
    word_4_url:  get_photo(word_4),
    word_5:  word_5,
    word_5_url:  get_photo(word_5)
  )
  @posts = Post.order(id: :desc)
  @post = @posts.last
  # @created = true
  redirect "/"
end


