class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commentable, :polymorphic => true
  
  # def commentable
  #   eval(self.commentable_type).find(self.commentable_id)
  # end
end
