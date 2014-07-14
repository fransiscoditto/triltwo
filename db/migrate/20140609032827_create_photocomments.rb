class CreatePhotocomments < ActiveRecord::Migration
  def change
    create_table :photocomments do |t|
      t.string :username
      t.text :body
      t.integer :photo_id

      t.timestamps
    end
  end
end
