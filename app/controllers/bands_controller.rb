class BandsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_band, only: [:show, :destroy]

    def index
        @bands = Band.all.includes(:genre)
    end

    def show
        # don't need anything here...
        # because we've set the private method set_band and called it's action in the before_action uptop
        # # @band = Band.find(params[:id])
        # puts "*****"
        # pp @band
    end

    def new
        @genres = Genre.all
    end

    def create
        @band = Band.new(band_params)
        @band.save
        redirect_to bands_path
    end

    def destroy
        # @band = Band.find(params[:id]) 
        # don't need because we've set the private method set_band and called it's action in the before_action uptop
        @band.destroy
        redirect_to bands_path
    end

    private
    def band_params
        params.require(:band).permit(:name, :genre_id, :description)
    end

    def set_band
        begin
            @band = Band.find(params[:id])    
        rescue 
            render "not_found"
        end
    end
end
