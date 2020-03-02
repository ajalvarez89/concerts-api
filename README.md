# CONCERTS-API

This is a API with simple authentication and JWT

## Setup

Just run the bundle install:

```bash
  bundle install
```

Now you should create db and run the migrates:

```bash
  rails db/setup
  or
  rails db:create db:migrate db:seed
```

To run the app:

```bash
  rails server
```
## Gems used:
* this is the list of gems used in this project:
```bash
gem 'active_model_serializers', '~> 0.10.10'
gem 'bcrypt', '~> 3.1', '>= 3.1.13'
gem 'jwt', '~> 2.2', '>= 2.2.1'
gem 'dotenv-rails'
gem 'cancancan', '~> 3.0', '>= 3.0.2'
```
## Endpoinds:
* GET concerts/show
```bash
http://localhost:3000/api/v1/concerts
Ahtorization: value(json web token) show comments
without token does not show the comments
```

* POST /login
```bash
http://localhost:3000/api/v1/login
body:
{
	"email":"alvaro@test.com",
	"password":"123456"
}
```
* POST /users#create
```bash
http://localhost:3000/api/v1/users
body:
{
	"email":"alvaro@test.com",
	"password":"123456",
	"rol_id": 1
}
```
* GET /users#show
```bash
http://localhost:3000/api/v1/users/1
Ahtorization: value(json web token) is required
```
* POST /comments#create
```bash
http://localhost:3000/api/v1/comments
Ahtorization: value(json web token) is required

body:
{
 "concert_id": 1,
 "name": "It's amazing",
 "content_body": "dfasdfasdfasdfasdft"
}

```
## Pending
- Implement web socket
