class User < ActiveRecord::Base

  # attr_accessor :email, :name
  has_many :microposts

  validates :name, :length => { :minimum => 2 }
  validates :email, :length => { :minimum => 5 }

end
