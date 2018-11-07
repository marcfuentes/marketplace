# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)ß

users = [
    {
        email: "chelleadmin@coder.com",
        password: '123456',
        password_confirmation: '123456',
        name: 'Michelle',
        preferred_name: 'Chelle',
        superadmin_role: true
    },
    {
        email: "mitchadmin@coder.com",
        password: '123456',
        password_confirmation: '123456',
        name: 'Mitchell',
        preferred_name: 'Bikini face',
        superadmin_role: true
       
    },
    {
        email: "beth@coder.com",
        password: '123456',
        password_confirmation: '123456',
        name: 'Beth',
        preferred_name: 'Beth',
    },
    {
        email: "chelleby@coder.com",
        password: '123456',
        password_confirmation: '123456',
        name: 'Chelleby',
        preferred_name: 'Chilly',
    },
    {
        email: "glennadmin@coder.com",
        password: '123456',
        password_confirmation: '123456',
        name: 'Glenn',
        preferred_name: 'Glenninis',
        superadmin_role: true
    }    
]

User.create!(users)
# User.where("email LIKE ?", "%admin%").each { |user| user.add_role(:superadmin) }