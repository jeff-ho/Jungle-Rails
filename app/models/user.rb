class User < ApplicationRecord

  has_secure_password

  validates :name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: {minimum: 5}
  validates :password_confirmation, presence: true

  def self.authenticate_with_credentials(email, password)
    email = email.strip.downcase
    user = User.find_by(email: email)
    if !user
      nil
    else 
     user.authenticate(password) || nil
    end

  end
  
end
