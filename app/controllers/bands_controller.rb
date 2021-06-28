class BandsController < ApplicationController
    def index
        @bands = Band.all.includes(:genre)
    end
end
