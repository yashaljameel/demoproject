# frozen_string_literal: true

class Project < ApplicationRecord
  has_many :records    # projects has many records

  before_create :greetings_message

  def greetings_message
    puts 'hey! i am project and will run before you create a new object'
  end
end
