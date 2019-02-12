class RemovePostForeignKey < ActiveRecord::Migration[5.2]
  def change
    # remove the old foreign key
    remove_foreign_key :comment, :post

    # add the new foreign key
    add_foreign_key :comment, :post, on_delete: :cascade
  end
end
