class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :group_name
      t.string :group_type
      t.string :group_image
      t.string :group_comment

      t.timestamps
    end
  end
end
