# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Features

- View all the store's available and sold out products on the home page.
- Visit an individual product's page to view its details (price, quantity...) by clicking on the image, name or 'details' button.
- Add items to your cart to then change quantity or remove items in the "Cart" section of the store.
- Place an order using the stripe API and receive an order confirmation with order details.
- Sign up/Login using your credentials to get Admin permissions: manage/add to your store's dashboard, categories and products.

### Stretch Features

- Add product reviews/raitings to product detail page
- Add form for users to add review/raiting
- show each product's average rating on the home page
- Create feature spec for user_login

## Final Product

### Landing Page

An overview of all the available products on the website
!["home-page"](https://github.com/MunaHD/jungle-rails/blob/master/docs/home-page.png?raw=true)

### Product Categories

users can find products by selecting categories
!["Product Categories"](https://github.com/MunaHD/jungle-rails/blob/master/docs/products-by-category.png?raw=true)

### Product Details

Shows the product's description, quantity, price and reviews/ratings
!["Product Details"](https://github.com/MunaHD/jungle-rails/blob/master/docs/product-details.png?raw=true)

### Cart

!["Cart"](https://github.com/MunaHD/jungle-rails/blob/master/docs/cart.png?raw=true)

### Order Summary

Gives an overview of the order the user made
!["Order Summary"](https://github.com/MunaHD/jungle-rails/blob/master/docs/order-summary.png?raw=true)

## Admin Pages

Dashboard
!["Dashboard"](https://github.com/MunaHD/jungle-rails/blob/master/docs/admin-dashboard.png?raw=true)
Products
!["Products"](https://github.com/MunaHD/jungle-rails/blob/master/docs/admin-product-page.png?raw=true)
Categories
!["Categories"](https://github.com/MunaHD/jungle-rails/blob/master/docs/admin-categories-page.png?raw=true)

## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
1. Remove Gemfile.lock
1. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe
