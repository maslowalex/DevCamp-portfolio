class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :thumb_image

  def self.angular
    where(subtitle: "Angular")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on rails") }

  after_initialize :set_defaults

  def set_defaults
    self.thumb_image ||= "http://via.placeholder.com/350x150"
    self.main_image ||= "http://via.placeholder.com/400x600"
  end
end 

