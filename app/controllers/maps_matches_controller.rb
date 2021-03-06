class MapsMatchesController < ApplicationController
    before_action :find_maps_match, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
    before_action :authenticate_user!, only: [:edit, :update, :destroy, :upvote, :downvote]
    
        def index
            @maps_matches = MapsMatch.all
        end
    
        def show
    
        end
    
        def new
            @maps_match = MapsMatch.new
        end
    
        def create
            @maps_match = MapsMatch.new(maps_match_params)
    
            if @maps_match.save
                redirect_to :back, notice: "Map successfully added to the match"
            else
                render 'new'
            end
        end
    
        def edit
        end
    
        def update
            if @maps_match.update(maps_match_params)
                redirect_to @maps_match, notice: "Successfully updated!"
            else
                render 'edit'
            end
        end
    
        def destroy
            @maps_match.destroy
            redirect_to root_path
        end

        def upvote   
            @maps_match.upvote_by current_user 
            redirect_to :back
        end

        def downvote
            @maps_match.downvote_by current_user
            redirect_to :back
        end
    
        private
    
            def maps_match_params
                params.require(:maps_match).permit(:map_id, :match_id)
            end
        
            def find_maps_match
                @maps_match = MapsMatch.find(params[:id])
            end
end
