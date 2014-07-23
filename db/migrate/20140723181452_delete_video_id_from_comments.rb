class DeleteVideoIdFromComments < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.remove :video_id
    end
  end
end
