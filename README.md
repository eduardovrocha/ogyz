# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to know:

- Docker
- Ruby version 2.6.6
- Rails 6 + Webpack 'Stimulus.js'
- PostgreSQL

## System dependencies - Docker
## Gem's
 -  Faker  
 -  Rspec 3.6  
 -  Capybara  
 -  Devise  
 -  AjaxDatatablesRails  

## Configuration 
```docker-compose up```

## Database creation and inicialization 
```docker-compose run web rails db:setup populate:load_author populate:load_book ```

## How to run the test suite
```docker-compose docker-compose run web rails rspec ```

### next features releases
    
[next-task] Custom Excpetions
https://blog.appsignal.com/2018/07/03/custom-exceptions-in-ruby.html  

[next-task] Docker cache bundle install configuration
https://medium.com/magnetis-backstage/how-to-cache-bundle-install-with-docker-7bed453a5800  

[doing-task] ajax-datatables-rails    

### Development status
-  Invalid JSON response. For more information about this error,please see "http://datatables.net/tn/1" when **GET** /books
   

### Services 
- not implemented

### Deployment instructions 
- not implemented


######guide: https://guides.github.com/features/mastering-markdown/