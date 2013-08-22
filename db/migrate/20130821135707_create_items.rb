class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :body
      t.integer :project_id
      t.integer :category_id

      t.timestamps
    end
  end
end
