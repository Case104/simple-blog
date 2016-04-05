CRUD FLOW

1. Bundle
2. Update work enviornment.
	bcrypt, pry, faker
3. Set up migrations
	a. be rake generate:migrations NAME=create_foo
	b. create_table :plural_foo do |t|
		z. unique, t.references :reference, timestamps
4. Set up models
	a. be rake generate:model NAME=Foo
	b. has_secure_password on user
	c. uniqueness, presence








Qs:
	1. Does bcrypt need to be in the enviornment?


CUSTOM VALIDATION NOTES

FORM TEMPLATE

