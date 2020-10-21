class AddVideoIdToVideos < ActiveRecord::Migration[6.0]
  def change
    add_column :videos, :video_id, :string
  end
end
