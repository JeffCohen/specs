class Item < ActiveRecord::Base

  belongs_to :project
  belongs_to :category

  def user_story?
    self.category == Category.user_story
  end

  def rule?
    self.category == Category.rule
  end

  def worry?
    self.category == Category.worry
  end
end
