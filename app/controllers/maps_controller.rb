class MapsController < ApplicationController
    before_action :find_map, only: [:show, :edit, :update, :destroy, :downvote]
    
        def index
            @maps = Map.all.order("created_at DESC")
        end
    
        def show
    
        end
    
        def new
            @map = Map.new
        end
    
        def create
            @map = Map.new(map_params)
    
            if @map.save
                redirect_to @map, notice: "Map successfully created"
            else
                render 'new'
            end
        end
    
        def edit
        end
    
        def update
            if @map.update(map_params)
                redirect_to @map, notice: "Map successfully updated!"
            else
                render 'edit'
            end
        end
    
        def destroy
            @map.destroy
            redirect_to root_path
        end

        def downvote
            @map.downvote_by current_user
            redirect_to :back
        end


        def upvote
            @map.upvote_by current_user
            redirect_to :back
        end
    
        private
    
        def map_params
            params.require(:map).permit(:image, :title)
        end
    
        def find_map
            @map = Map.find(params[:id])
        end
end
