class CreateFavors < ActiveRecord::Migration[6.0]
  def change
    create_table :favors do |t|
      t.integer :user_id
      t.string :favor_videos

      t.timestamps
    end
  end
end
