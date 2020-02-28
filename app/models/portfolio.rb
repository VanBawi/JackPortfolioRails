class Portfolio < ApplicationRecord
    has_many :technologies
    accepts_nested_attributes_for :technologies,
                                   reject_if: lambda {|attrs|attrs['name'].blank? }


    include Placeholder
    validates_presence_of :title, :body

    # this requires carrierwave gem
    mount_uploader :thumb_image, PortfolioUploader
    mount_uploader :main_image, PortfolioUploader

    def self.angular
        where(subtitle: "Angular")
    end

    scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby On Rails')}

    def self.by_position
        order("position ASC")
    end



    acts_as_list scope: :circuit
    default_scope { order(position: :asc) }






end
 