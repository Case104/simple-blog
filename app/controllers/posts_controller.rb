get '/' do
	redirect '/posts'
end

get '/posts' do
	@posts = Post.all
	erb :'/posts/index'
end

get '/posts/new' do
	if logged_in?
		erb :'/posts/new'
	else
		@errors = ['You must be logged in to post']
		erb :'/posts/index'
	end
end

post '/posts' do
	@post = Post.new(params[:post])
	@post.user_id = session[:user_id]
	if @post.save
		redirect "/posts/#{@post.id}"
	else
		@errors = @post.errors.full_messages
		erb :'/posts/new'
	end
end

get '/posts/:id' do
	@post = Post.find_by(id: params[:id])
	erb :'/posts/show'
end

delete 'posts/:id' do
end
