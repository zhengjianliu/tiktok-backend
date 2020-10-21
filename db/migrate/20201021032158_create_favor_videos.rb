class CreateFavorVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :favor_videos do |t|
      t.references :users, null: false, foreign_key: true
      t.references :videos, null: false, foreign_key: true

      t.timestamps
    end
  end
end
