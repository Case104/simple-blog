CRUD FLOW

1. Bundle
2. Update work enviornment.
	a. bcrypt, pry, faker
3. Set up migrations
	a. be rake generate:migrations NAME=create_foo
	b. create_table :plural_foo do |t|
		unique, t.references :reference, timestamps
4. Set up models
	a. be rake generate:model NAME=Foo
	b. has_secure_password on user
	c. uniqueness, presence
5. Seed and test if necessary
6. Set up users_controller
	a. get '/users/new'
		erbs the form to register
	b. post '/users'
		creates the user
	c. get '/users/login'
		erbs the form to login
	d. post '/users/login'
		creates the session
	e. get 'users/logout'
		clears session
	f. (optional) 'get users/show' - Profile page
7. Pattern
	a. Make a route in the controller
	b. Make a view for it
	c. Make a way to get to the route (link, form)
	b. Add logic if necessary



Qs:
	1. Does bcrypt need to be in the enviornment?
	2. Validation for email in model and migration.
	3(!). Redirect vs erb
	4. Instance varia

CUSTOM VALIDATION NOTES

In method
-------------------------------------------------
validate :starts_with_lion

private

def starts_with_lion
	unless message.starts_with?('lion')
	errors.add(:message, 'Did not start with lion')
end
--------------------------------------------------
FORM TEMPLATE

<form action='/users' method='POST'>
  <label for='user[email]'>Email</label>
  <div>
  	<input type="text" name="user[email]" placeholder="JohnDoe@email.com">
  </div>
  <label for'user[password]'>Password</label>
  <div>
  	<input type="password" name="user[password]">
  </div>
  <div>
  	<input type='submit' value='Register'>
  </div>
</form>

