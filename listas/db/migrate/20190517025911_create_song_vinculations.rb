class CreateSongVinculations < ActiveRecord::Migration[5.2]
  def change
    create_table :song_vinculations do |t|
      t.integer :song_id
      t.belongs_to :list, foreign_key: true

      t.timestamps
    end
  end
end
