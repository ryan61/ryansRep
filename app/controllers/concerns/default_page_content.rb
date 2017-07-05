module DefaultPageContent
   extend ActiveSupport::Concern
   
   included do
       before_action :set_page_defaults
   end
  
  def set_page_defaults
    @page_title = "Portfolio-of-Ryan"
    @seo_keywords = "Ryan Harper porfolio"
  end
    
end