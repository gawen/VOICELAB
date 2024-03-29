class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  devise :omniauthable, omniauth_providers: [:google_oauth2]


  # def self.find_for_google_oauth(auth)
  #   user_params = auth.slice("provider", "uid")
  #   user_params.merge! auth.info.slice("email", "first_name", "last_name")
  #   user_params[:token] = auth.credentials.token
  #   user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
  #   user_params = user_params.to_h

  #   user = User.find_by(provider: auth.provider, uid: auth.uid)
  #   user ||= User.find_by(email: auth.info.email) # User did a regular sign up in the past.
  #   if user
  #     user.update(user_params)
  #   else
  #     user = User.new(user_params)
  #     user.password = Devise.friendly_token[0,20]  # Fake password for validation
  #     user.save
  #   end

  #   return user
  # end
  # def self.from_omniauth(access_token)
  #   data = access_token.info
  #   user = User.where(email: data['email']).first

  #   # Uncomment the section below if you want users to be created if they don't exist
  #   unless user
  #       user = User.create(name: data['name'],
  #          email: data['email'],
  #          password: Devise.friendly_token[0,20]
  #       )
  #   end
  #   user
  # end
end
