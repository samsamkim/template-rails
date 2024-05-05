class AddFieldsToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :title, :string, limit: 80
    add_column :posts, :body, :text
  end
end
