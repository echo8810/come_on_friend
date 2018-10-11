class RemoveGroupIdFromMessage < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :group_id, :string
  end
end
