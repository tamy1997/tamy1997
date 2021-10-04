class AddPostToComment < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :post, :string
  end
end
