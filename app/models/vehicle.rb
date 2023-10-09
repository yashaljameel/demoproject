class Vehicle < ApplicationRecord
#enum 
  enum :status, [:shipped, :being_packaged, :complete, :cancelled]
end
  