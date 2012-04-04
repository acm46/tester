class CreateFoodUserJoinTable < ActiveRecord::Migration
	def change
		create_table :foods_users, :id => false do |t|
			t.integer :food_id
			t.integer :user_id
		end
	end
end
