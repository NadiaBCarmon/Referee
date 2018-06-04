class CreateConflicts < ActiveRecord::Migration[5.2]
  def change
  	create_table :conflicts, :id => false do |t|
    	t.integer :business_id
    	t.integer :customer_id
    	t.json :customer_survey
    	t.json :business_survey
    	t.datetime "created_at", null: false
    	t.datetime "updated_at", null: false
    end
  end
end
