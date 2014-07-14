class CreateBlogcomments < ActiveRecord::Migration
  def change
    create_table :blogcomments do |t|
      t.string :username
      t.text :body
      t.integer :blog_id

      t.timestamps
    end
  end
end
