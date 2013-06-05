get '/' do
  @categories = Category.all
  erb :index
end

get '/:category_id' do
  @category_id = params[:category_id]
  @posts = []
  Category.find(@category_id).posts.each {|post| @posts << post}
  erb :category
end

post '/posts/newpost/create' do
  Post.create(params)
  redirect '/'
end

get '/posts/newpost' do
  erb :newpost
end

get '/posts/:post_id' do
  @post_id = params[:post_id]
  @price = Post.find(@post_id).price
  @title = Post.find(@post_id).title
  @description = Post.find(@post_id).description
  @email = Post.find(@post_id).email
  @id = Post.find(@post_id).id
  erb :post
end



