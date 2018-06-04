class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    	create_table :customers do |t|
    	t.string :firstname
    	t.string :lastname
    	t.string :username
    	t.datetime "created_at", null: false
    	t.datetime "updated_at", null: false
    end
  end
end
