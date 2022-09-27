# Jungle

Jungle is a mini e-commerce application built with Rails 6.1.

## Final Product
<img width="1647" alt="Screen Shot 2022-09-27 at 1 23 25 PM" src="https://user-images.githubusercontent.com/55267263/192594407-e2c9d68b-3e0d-4f69-aada-8e3fd50d5e97.png">
<img width="2063" alt="Screen Shot 2022-09-27 at 1 19 27 PM" src="https://user-images.githubusercontent.com/55267263/192594455-f3808f6a-2512-4d3e-bd1d-ed75819939b4.png">
<img width="2063" alt="Screen Shot 2022-09-27 at 1 19 32 PM" src="https://user-images.githubusercontent.com/55267263/192594464-318dc9f3-bfca-489d-8304-d0e79dc38a41.png">
<img width="2063" alt="Screen Shot 2022-09-27 at 1 19 50 PM" src="https://user-images.githubusercontent.com/55267263/192594500-23ce50c0-6531-4a50-9aa6-ee9a0835c78b.png">
<img width="2063" alt="Screen Shot 2022-09-27 at 1 20 28 PM" src="https://user-images.githubusercontent.com/55267263/192594515-f5c19331-ea58-4f81-81bc-9a82b20d0b35.png">
<img width="2063" alt="Screen Shot 2022-09-27 at 1 18 54 PM" src="https://user-images.githubusercontent.com/55267263/192594534-4eee675b-88c0-4c29-b626-7904557e32e0.png">
<img width="2063" alt="Screen Shot 2022-09-27 at 1 19 01 PM" src="https://user-images.githubusercontent.com/55267263/192594540-e28b1562-cb76-40dc-8e6e-d066a14afea9.png">


## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe


## Setup
1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server
