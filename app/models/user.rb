class User < ApplicationRecord
  has_many :blogs, dependent: :destroy
  has_many :cities, through: :blogs

  has_secure_password

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end

end
