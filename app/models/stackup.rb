# frozen_string_literal: true

class Stackup < ApplicationRecord
  ####    putting validations here    #####

  # presence validation
  validates :name, :address, :language, presence: true

  # uniqueness validation
  validates :name, uniqueness: true

  # length validation
  # validates :address, length: { minimum: 2, maximum: 10 }

  # format validation
  validates :name, format: { with: /\A[a-zA-Z]+\Z/, message: 'only letters are allowed' }

  # after create validation to display the age
  after_create :display_stackup_age

  def display_stackup_age
    if stackup_age.present?
      age = date.today.year - dob.year
      puts "==== age of this model is #{age}===="
    else
      puts 'age can not be calculated without dob'
    end
  end
end

# validation for uniqueness of adress
# validates :address, :name , uniqueness: true

#######  CALLBACK   ######

# before create validation
before_create :first_call # registraion of the callback

# implementation
def first_call
  puts 'hi! this callback will show before the creation...'
end

after_create :after_commit # registration of callback

# implemtation
def after_commit
  puts 'this callback will show after the creation...'
end
