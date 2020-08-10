class MissionsController < ApplicationController

    def new
        @mission = Mission.new
    end

    def create
        @mission = Mission.create(mission_params)
        redirect_to scientist_path(@mission.scientist)
    end

    private

    def mission_params
        params.require(:mission).permit(:scientist_name, :planet_name, :name)
    end
end
