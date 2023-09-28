class CreateReels < ActiveRecord::Migration[7.0]
  def change
    create_table :reels do |t|
      t.string :name
      t.string :video_standard
      t.string :video_definition
      t.string :clip_list
      t.string :total_play_time

      t.timestamps
    end
  end
end
