class Project < ActiveRecord::Base

  has_many :items, dependent: :destroy

  has_many :user_stories, -> { where category_id: Category.find_by(name: 'User Story') }, class_name: 'Item'
  has_many :rules, -> { where category_id: Category.find_by(name: 'Rule') }, class_name: 'Item'
  has_many :worries, -> { where category_id: Category.find_by(name: 'Worry') }, class_name: 'Item'

end
