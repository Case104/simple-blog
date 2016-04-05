get '/users/new' do
	@user = User.new
	erb :'/users/new'
end

post '/users' do
	@user = User.new(params[:user])
	if @user.save
		session[:user_id] = @user.id
		redirect '/'
	else
		@errors = @user.errors.full_messages
		redirect '/users/new'
	end
end

get '/users/login' do
	if logged_in?
		@errors = ['You are already logged in.']
		redirect '/'
	else
		erb :'/users/login'
	end
end

post '/users/login' do
	user = User.find_by(email: params[:user][:email])
	if user && user.authenticate(params[:user][:password])
		session[:user_id] = user.id
		redirect '/'
	else
		@errors = ['Incorrect Email or Password.']
		redirect 'users/login'
	end
end

get '/users/logout' do
	session.clear
	redirect '/'
end