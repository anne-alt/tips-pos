class ReceiptsController < ApplicationController
    has_many :products

    belongs_to :user
end
