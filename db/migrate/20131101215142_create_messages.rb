class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    	t.integer :user_id
    	t.integer :event_id
    	t.integer :status
    	t.text :message

    	t.timestamps
    end
  end
end
