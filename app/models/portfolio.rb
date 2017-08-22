class Portfolio < ApplicationRecord
  validates_presence_of :title, :body

  def self.angular
    where(subtitle: "Angular")
  end
end 

