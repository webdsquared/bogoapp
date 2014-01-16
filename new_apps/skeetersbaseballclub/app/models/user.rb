class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  
  after_create :set_super_admin


  has_many :posts
  has_many :events

  

  

  private

  def full_name
    "#{first_name} #{last_name}"
  end

  def set_super_admin
  	if User.count == 1
  		User.first.update_attribute(:super_admin, true)
  	else
  		return true
  	end
  end

end
