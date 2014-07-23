class MakeCommentsPolymorphic < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.column :commentable_id, :integer
      t.column :commentable_type, :string
    end

    add_reference :comments, :user, index: true
  end
end