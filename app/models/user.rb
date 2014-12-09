class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :boards
	has_many :pins

	# validates :first_name,  :last_name, :email, presence: true 
	
	#creating new model so we can call @user.full_name 
	def full_name
		"#{first_name} #{last_name}"
	end	

end
