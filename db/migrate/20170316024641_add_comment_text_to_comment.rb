class AddCommentTextToComment < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :comment_text, :text
  end
end
