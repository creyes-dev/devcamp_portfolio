module DefaultPageContent
    extend ActiveSupport::Concern

    included do
        before_filter :set_page_defaults
    end

    def set_page_defaults
        @page_title = "DevcampPortfolio | My portfolio app"
        @seo_keywords = "creyes-dev portfolio"
    end
end
