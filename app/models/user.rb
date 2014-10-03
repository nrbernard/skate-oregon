class User < ActiveRecord::Base
  has_many :reviews

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

#   after_create :send_signup_confirmation

# private
#   def send_signup_confirmation
#     UserMailer.signup_confirmation(self).deliver
#   end
end
