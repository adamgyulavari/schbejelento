class ChangeEvents < ActiveRecord::Migration
  def change
  	remove_column :events, :members
  	add_column :events, :members_in, :string
  	add_column :events, :members_out, :string
  end
end
