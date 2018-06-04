class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
     create_table :businesses do |t|
    	t.string :businessname
    	t.string :address
    	t.string :city
    	t.string :state
    	t.string :zipcode
      t.string :username
    	t.datetime "created_at", null: false
    	t.datetime "updated_at", null: false
    end
  end
end
