class Client < ApplicationRecord
  has_many :appointments

  def display_name
    name[0..1]
  end
end
