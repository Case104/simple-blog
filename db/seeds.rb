User.create(email: 'user@mail.com', password: 'password')
Post.create(body: 'This is a post', user_id: 1)
Comment.create(body: 'this is a comment', user_id: 1, post_id: 1)