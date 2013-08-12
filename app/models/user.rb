class User < ActiveRecord::Base
  has_many :posts
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:omniauthable , :omniauth_providers => [:facebook]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :provider, :uid, :name, :token
  # attr_accessible :title, :body
  
  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = User.create(name: auth.info.name,
        provider:auth.provider,
        uid:auth.uid,
        email: auth.info.email,
        token: auth.credentials.token,
        password:Devise.friendly_token[0,20]
      )
    end
    user
  end
  
  # def self.find_for_twitter_oauth(auth, signed_in_resource=nil)
#     user = User.where(:provider => auth.provider, :uid => auth.uid).first
#     unless user
#       user = User.create(name:auth.info.nickname,
#                            provider:auth.provider,
#                            uid:auth.uid,
#                            token: auth.credentials.token,
#                            email:"#{auth.info.nickname}@tweets.com",
#                            password:Devise.friendly_token[0,20]
#                            )
#     end
#     user
#   end
  
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
end
