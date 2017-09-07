module DefaultPageContent
  extend ActiveSupport::Concern

  included do 
    before_filter :set_title
  end

  def set_title
    @page_title = "Alexandr Maslo | My Website"
    @seo_keywords = "Alex Alexandr Maslo portfolio"
  end
end