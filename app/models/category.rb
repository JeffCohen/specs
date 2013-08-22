class Category < ActiveRecord::Base

  has_many :items

  def self.user_story
    find_by name: 'User Story'
  end

  def self.rule
    find_by name: 'Rule'
  end

  def self.worry
    find_by name: 'Worry'
  end

end
