# PiggyBank Backend 💰 - Architecture for this API

**"Piggy Bank"** is a student project developed by  <a href="https://www.kelseaportfolio.com/">Kelsea McAllister</a>.

**Check out  PiggyBank here:** https://www.pigbnkapp.com/

For the _PiggyBank_ Backend we are working with a __RESTful API__ built with _Ruby_ on _Rails_. 
Server deployed to _Heroku_ .

I work with 4 main Models in our database: __User__, __Piggy_Bank__,  __Account__, and __Transaction__.
Models were connected the creating ActiveRecord relations. Active Model Serializers were also implemented. 

We have implemented validation where possible on each of our models, in order to control that the data stored in our database is clean and proper ✨

## Frontend - See it in Action 💥

You can find the PiggyBank Frontend repository here, where this API is put to the test 💪: https://github.com/kelseamc/piggybank-frontend

And a deployed LIVE version of it here: https://www.pigbnkapp.com/

## CORE ROUTES - Documentation ⭐

### Base URL 👶
https://pigbankk.herokuapp.com/api/v1

### GET /login
_Login endpoint_: login for an already existing user. This endpoint expects a username and password in the client's POST request in order to authenticate an already existing User.

### POST /register
Creates a new user (Sign Up). This endpoint expects a unique username.

### GET /profile
_Restricted endpoint_: Endpoint shows a specific user's data. Must be logged in to access.

### POST /piggy_banks
Creates a new piggy bank. Must be logged in to access. 

### POST /accounts
Creates a new bank account. Must be logged in to access.

### POST /transactions
Creates a new transaction. Must be logged in to access.

### DELETE /accounts/:accountsId
Remove a bank account. Must be logged in to access

### DELETE /transactions/:transactionId
Remove a transaction. Must be logged in to access.

### DELETE /piggy_banks/:piggyBankId
Remove a piggy bank. Must be logged in to access.

### PATCH /piggy_banks/:piggyBankId
Update a piggy bank. Must be logged in to access.

### PATCH /accounts/:accountId
Update a bank account. Must be logged in to access.


