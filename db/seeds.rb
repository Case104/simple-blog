User.create(email: 'jcase@mail.com', username: 'Case', password: 'password')
Post.create(title: 'This is a title', body: 'This is a post', user_id: 1)
Comment.create(body: 'this is a comment', user_id: 1, post_id: 1)