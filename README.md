# README

This application is running on Ruby version `2.7.3` and rails framework version `7.0.3.1`. Also make sure to have Postgresql database installed. And here are some links for reference:


* https://www.ruby-lang.org/en/downloads/
* https://guides.rubyonrails.org/getting_started.html#installing-ruby
* https://www.postgresql.org/download/

### This application is also hosted on Heroku, you can check the live demo [here](https://protected-lake-56679.herokuapp.com/)

--------------------------------------------------------

## Follow these steps to install the application on your local environemt: 
After all is properly installed, first clone this repository with
    git clone https://github.com/yehia-khalil/bookstore.git


then:

1- Install all dependencies

run `bundle insall`

2- Create db and migrate schema

run 
`rails db:create` , 
`rails db:migrate` and then `rails db:seed`

* I have added seeders for a user with admin access with credentials of  `email: admin@admin.com` and `password: 123456`.

3- Now run your application using the command
`rails s`

4- After authenticating, you will be redirected to my humble admin panel which could do all the CRUD ops on the books entity **"it was created prior to knowing i should be using Rails Admin gem"** . To access the `rails admin` panel, you can either click on the `Admin panel` link present in the header or just type down `{domain}/admin` in the url.
