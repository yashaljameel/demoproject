# frozen_string_literal: true

class Photo < ApplicationRecord
  belongs_to :section
  # belongs_to :documnet  #through: :sections
end
