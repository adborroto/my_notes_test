# RoR Notes application
Simple application to manage notes written in RoR.
The apps is has two main functionalities
1. Login/Logout
2. CRUD a note

# DB migrations

Run db migrations. It uses a sqlite3 provider

```
rails db:migrate
```

## DB seed

In order to login you will require a user. I include a test user.
Firs run db:seed

```
rails db:seed
```

Then you can login with username: `admin`, password: `test`

# Run test

I included basic test for models.Using **rspec**

```
rspec spec --format documentation
```

# Run application

```
rails server
```

# Screenshots

Notes

![Login](/resources/app.png "login")

Login

![Login](/resources/login.png "login")