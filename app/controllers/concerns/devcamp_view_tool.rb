module DevcampViewTool
  extend ActiveSupport::Concern

  included do
    before_filter :set_copyright
  end

  def set_copyright
    @copyright = DevcampViewTool::Render.copyright 'Alexandr Maslo', 'All rights reserved'
  end

  class Render 
    def self.copyright name, msg
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end