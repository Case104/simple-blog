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







Qs:
	1. Does bcrypt need to be in the enviornment?
	2. Validation for email in model and migration.
	3(!). Redirect vs erb


CUSTOM VALIDATION NOTES

FORM TEMPLATE

