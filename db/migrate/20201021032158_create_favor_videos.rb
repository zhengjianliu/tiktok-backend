class CreateFavorVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :favor_videos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :video_id
      
      t.timestamps
    end
  end
end
