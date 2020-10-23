class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :userName, null: false
      t.string :fullName, null: false
      t.string :password, null: false

      t.timestamps
    end
  end
end
