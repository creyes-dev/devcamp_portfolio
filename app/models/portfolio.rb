class Portfolio < ApplicationRecord

    validates_presence_of :title, :body, :main_image, :thumb_image

    # Retrieve all portfolio items with Angular subtitle
    def self.angular
        where(subtitle: 'Angular')
    end

    # Retrieve all portfolio items with Ruby on rails subtitle
    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on rails') }

end
