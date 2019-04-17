class ListingsController < ApplicationController
    #before it runs actions we want to call the set_listing method! passes a symbol of the same name!
    before_action :set_listing, only: [:show, :edit, :update, :destroy]
    
    def create
        #create new listing
    end

    def update
        #updates current listing
    end

    def index
        #shows all listings
        @listings = Listing.all
    end

    def edit
        #show the edit form        
    end

    def destroy
        #deletes current listing       
    end

    def new
        #shows form for creating a new listing
    end

    def show
        #view a single listing
    end
    
    #anything underneath private cannot be used outside! only used in the before action!
    private

    def set_listing
        id = params[:id]
        @listing = Listing.find(id)        
    end
end