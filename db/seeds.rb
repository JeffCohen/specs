User.destroy_all
User.create name: 'Jeff'

Project.destroy_all
Project.create title: 'Vinyl'

Item.destroy_all
Category.destroy_all

Category.create name: 'User Story'
Category.create name: 'Rule'
Category.create name: 'Worry'
