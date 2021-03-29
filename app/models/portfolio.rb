class Portfolio < ApplicationRecord
    has_many :technologies
    include Placeholder
    validates_presence_of :title, :body, :main_image, :thumb_image

    # Retrieve all portfolio items with Angular subtitle
    def self.angular
        where(subtitle: 'Angular')
    end

    # Retrieve all portfolio items with Ruby on rails subtitle
    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on rails') }

    after_initialize :set_defaults

    def set_defaults
        self.main_image ||= Placeholder.image_generator(600,400) # if self.main_image.is_nil? self.main_image = "https://via.placeholder.com/600x400"
        self.thumb_image ||= Placeholder.image_generator(350,200) 
    end
end
