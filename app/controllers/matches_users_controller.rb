class MatchesUsersController < ApplicationController
    before_action :find_matches_user, only: [:show, :edit, :update, :destroy,]
        def index
            @matches_users = MatchesUser.all
        end
    
        def show
    
        end
    
        def new
            @matches_user = MatchesUser.new
        end
    
        def create
            @matches_user = MatchesUser.new(matches_user_params)
    
            if @matches_user.save
                redirect_to :back, notice: "User successfully added to the match"
            else
                render 'new'
            end
        end
    
        def edit
        end
    
        def update
            if @matches_user.update(matches_user_params)
                redirect_to @matches_user, notice: "Successfully updated!"
            else
                render 'edit'
            end
        end
    
        def destroy
            @matches_user.destroy
            redirect_to root_path
        end

        private
    
            def matches_user_params
                params.require(:matches_user).permit(:match_id, :user_id)
            end
        
            def find_matches_user
                @matches_user = MatchesUser.find(params[:id])
            end
end
