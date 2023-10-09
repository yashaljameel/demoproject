# frozen_string_literal: true

class Section < ApplicationRecord
  has_many :photos
  belongs_to :documnet
end
