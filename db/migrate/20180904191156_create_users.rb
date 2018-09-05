class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :account_name
      t.string :mail_address

      t.timestamps
    end
  end
end
