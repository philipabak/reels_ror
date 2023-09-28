class CreateClips < ActiveRecord::Migration[7.0]
  def change
    create_table :clips do |t|
      t.string :name
      t.string :video_standard
      t.string :video_definition
      t.string :start_time
      t.string :end_time
      t.text :description

      t.timestamps
    end
  end
end
