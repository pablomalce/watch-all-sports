class AddColumnsToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :event_id, :string
    add_column :events, :player_id, :string
    add_column :events, :player_name, :string
  end
end
