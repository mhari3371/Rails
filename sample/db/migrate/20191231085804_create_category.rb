class CreateCategory < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
    	t.text :category_name
    end
  end
end
