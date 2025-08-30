class AddArticleIdToComments < ActiveRecord::Migration[8.0]
  def change
    add_column :comments, :articleid, :integer
  end
end
