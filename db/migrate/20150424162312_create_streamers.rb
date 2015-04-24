class CreateStreamers < ActiveRecord::Migration
  def change
    create_table :streamers do |t|
      t.string :name
      t.integer :followers
      t.integer :subscribers

      t.timestamps
    end
  end
end
