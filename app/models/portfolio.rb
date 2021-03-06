class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, 
                                 reject_if: lambda { |attr| attr ['name'].blank? }

  include Placeholder

  validates_presence_of :title, :body, :thumb_image

  def self.angular
    where(subtitle: "Angular")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on rails") }

  after_initialize :set_defaults

  def set_defaults
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '150')
    self.main_image ||= Placeholder.image_generator(height: '200', width: '300')
  end
end 

