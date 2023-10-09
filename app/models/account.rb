# frozen_string_literal: true

class Account < ApplicationRecord
  has_one :account_history
  belongs_to :supplier
end
