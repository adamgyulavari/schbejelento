class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.integer :user_id
    	t.string :name
    	t.datetime :date
    	t.time :start
    	t.time :end
    	t.integer :guests
    	t.integer :guests_ext
    	t.integer :members
    	t.integer :members_ext
    	t.text :members_ext_names
    	t.boolean :beeng_rendezo
    	t.boolean :beeng_vendeglista
    	t.boolean :beeng_biztior
    	t.boolean :h_fnt
    	t.boolean :h_ent
    	t.boolean :h_eek
    	t.boolean :h_102
    	t.boolean :h_103
    	t.integer :levalasztas

    	t.timestamps
    end
  end
end
