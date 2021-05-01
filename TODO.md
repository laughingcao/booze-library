x- User
    authentication
    email/password
    unique emails
    has many bottles

x- Alcohol_Bottle
    /user_id /name /abv /type /origin /price

x- Interface
-User sees sign up form or login if account already made
-User can sign up and submit form
-User can add, edit, delete his/her collection of bottles
-User can view their collection

x- User class
-name, password
-user signs up/logs in
-has many bottles

x- User controller and views
- /user/signup - renders sign up form
- /user/signup - processes sign up form, creates, user, post
- /user/login  - renders login form
- /user/login - processes login form, post
x- need to set sessions
x- user can view their collection, '/bottles'

x- bottle class
    -attribues => name, type, abv, price, origin, user_id
    -belongs to user

Bottle controller and views
- /bottles/new - renders new collection form -GET
- /bottles - submits form -POST
- /bottles - renders all user bottles -GET
- /bottles/:id - renders one bottle -GET
- /bottles/:id/edit - renders form one bottle to update -GET
- /bottles/:id - update collection persist form -PATCH
- /bottles/:id/ - delete bottle -DELETE
