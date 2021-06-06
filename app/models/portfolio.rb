class Portfolio < ApplicationRecord
    has_many :technologies

    accepts_nested_attributes_for :technologies, 
                                  allow_destroy: true,
                                    reject_if: lambda { |attrs| attrs['name'].blank? }

    validates_presence_of :title, :body
    
    mount_uploader :thumb_image, PortfolioUploader
    mount_uploader :main_image, PortfolioUploader

    # Retrieve all portfolio items with Angular subtitle
    def self.angular
        where(subtitle: 'Angular')
    end

    def self.by_position
        order("Position ASC")
    end

    # Retrieve all portfolio items with Ruby on rails subtitle
    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on rails') }

end
