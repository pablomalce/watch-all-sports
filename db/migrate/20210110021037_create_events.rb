class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :event_id, null: false
      t.string :player_id, null: false
      t.string :player_name, null: false
      t.timestamps
    end
  end
end
