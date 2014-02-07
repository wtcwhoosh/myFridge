class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :invitations
  has_many :ingredients, :through => :fridge_ingredients
  has_many :fridge_ingredients
  has_many :recipes
  has_many :circles, dependent: :destroy
  has_many :circles, through: :circle_users 
  belongs_to :recipe_looper
  has_many :circle_users
  mount_uploader :profilePicture, ProfilePictureUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :omniauthable, :omniauth_providers => [:facebook]
  
  # Solr_Sunspot Code:

  searchable do
    text :userName
  end
     



  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = User.create(name:auth.extra.raw_info.name,
                         provider:auth.provider,
                         uid:auth.uid,
                         email:auth.info.email,
                         password:Devise.friendly_token[0,20]
                         )
    end
    user
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

end
