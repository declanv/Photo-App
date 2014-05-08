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
  # # @posts = Post.all
  @post = @posts.first
  erb :index
end

post '/posts' do
  # processes new post data
  input_1 = Instagram.get_photo(params[:input_1])
  input_2 = params[:input_2]
  input_3 = Instagram.get_photo(params[:input_3])
  input_4 = params[:input_4]
  input_5 = Instagram.get_photo(params[:input_5])
  Post.create(
    input_1: input_1,
    input_2: input_2,
    input_3: input_3,
    input_4: input_4,
    input_5: input_5
  )
  @posts = Post.order(id: :desc)
  @created = "created"
  @post = @posts.first
  redirect "/"
end


