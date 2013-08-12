class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :post, use: :slugged
  
  belongs_to :user
  attr_accessible :post, :title, :user_id
  validates_presence_of :post, :slug, :title, :user_id
  validates_length_of :post, :maximum => 255
  
  after_create :posting_post, :unless => Proc.new{ self.user.provider.blank? }
  
  #private
    def posting_post
      if self.user.provider == "facebook"
        me = FbGraph::User.me(self.user.token)
        me.feed!(
          :message => self.post,
        )
      end
    end 
end
