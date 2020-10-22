class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :userName
      t.string :fullName
      t.string :password
      t.timestamps
    end
  end
end
