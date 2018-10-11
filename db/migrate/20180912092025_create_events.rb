class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :group_id
      t.string :event_name
      t.text :event_script
      t.string :event_image
      t.date :event_day
      t.string :event_place
      t.integer :limit_num_people
      t.date :limit_date

      t.timestamps
    end
  end
end
