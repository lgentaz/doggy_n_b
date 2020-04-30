# README

FreeDoc is a Ruby app.

# Versions
* Ruby version 2.5.1
* Rails version 5.2.4

# Gem
* table_print: Use "tp" to visualize the information as tables
* faker: To create a fake database

This app helps manage a DB between doctors and patients.

# Before using 
Please run "rails db:seed" to refresh DB.

# DB content
* 30 dogsitters
* 120 dogs
* 150 strolls
* 400 outings
* 5 cities

# Relation between tables
* Dogsitter - Strolls :         1 - n
* Dogs - Strolls :              n - n (creation of Outing as join table)
* Dogsitter - City :            n - 1
* Dogs - City :                 n - 1
* Strolls - City :              n - 1
Dogs and Dogsitters participating a specific Stroll are from the same city the Stroll takes place in.

# Run tests
* $ tp Dogsitter.all
* $ tp Dog.all
* $ tp Stroll.all

* $ tp a = Dogsitter.find(7)
* $ tp a.dogs

* $ tp d = Dog.find(45)
* $ tp d.dogsitters
* $ tp tp d.strolls
