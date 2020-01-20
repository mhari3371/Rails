class User < ApplicationRecord
	  # attr_accessor :encrypted_password

	  has_many :tweet 

   validates :username, presence: true, uniqueness: true, length: { minimum: 4 }
   validates :email, :presence => true, :uniqueness => true
   #validates :password, :confirmation => true #password_confirmation attr
   validates_length_of :encrypted_password, :in => 6..20, :on => :create
end
