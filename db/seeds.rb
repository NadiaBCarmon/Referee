# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.create(firstname: "Nancy", lastname: "Sinatra", username:"nsinatra", email: "nsinatra@gmail.com", encrypted_password:"1234")
Customer.create(firstname: "Bob", lastname: "Seger", email: "bseger@gmail.com", username:"bseger", password:"1234")
Customer.create(firstname: "Yoon", lastname: "Jo Han", email: "yhan@gmail.com", username:"yjhan", password:"1234")

Business.create(businessname: "Toys R Us", address: "123 Sesame Street", city: "New York", state: "NY", zipcode: "10037", email: "toysrus@gmail.com", username: "toysrus", password: "1234")
Business.create(businessname: "Best Buy", address: "79 Harold Square", city: "New York", state: "NY", zipcode: "10017")
Business.create(businessname: "Aldi's", address: "21 Fulton Street", city: "New York", state: "NY", zipcode: "10038")

Conflict.create(business_id: 1, customer_id: 1, customer_survey: "Customer survey 1", business_survey: "Business survey 1")
Conflict.create(business_id: 2, customer_id: 2, customer_survey: "Customer survey 2", business_survey: "Business survey 2")
Conflict.create(business_id: 3, customer_id: 3, customer_survey: "Customer survey 3", business_survey: "Business survey 3")

# user = Customer.new
# user.email = 'nsinatra@gmail.com'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
# user.save!