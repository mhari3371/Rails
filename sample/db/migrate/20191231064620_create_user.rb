class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
    	t.text :name
    	t.integer :phone
    end
  end
end
