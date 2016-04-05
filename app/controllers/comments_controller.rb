get '/comments/new' do
	erb :'/comments/new'
end

post '/comments' do
	@comment = Comment.new()
	@comment.assign_attributes(params[:comment])
	@comment.user_id = current_user.id
	if @comment.save
		redirect "/posts/#{params[:comment][:post_id]}"
	else
		@errors = @comment.errors.full_messages
		erb :"/comments/new"
	end
end