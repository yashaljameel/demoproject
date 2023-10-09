# frozen_string_literal: true

class Documnet < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  has_many :sections
  # has_many :photos        #through :sections  (giving error messages)


  enum status: {
    pending: 0,
    active: 1,
    archived: 2
  }

  def email
    
    binding.pry
    
  end
  
end
