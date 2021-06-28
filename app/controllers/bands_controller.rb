class BandsController < ApplicationController
    def index
        @bands = Band.all.includes(:genre)
    end

    def show
        @band = Band.find(params[:id])
        puts "*****"
        pp @band
    end
end
