class Event < ApplicationRecord

  validates :event_name ,presence: true

  belongs_to :group
  
end
