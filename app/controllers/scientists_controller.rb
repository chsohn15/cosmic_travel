class ScientistsController < ApplicationController

    def index
        @scientists = Scientist.all
    end

    def show
        id = params[:id]
        @scientist = Scientist.find(id)
    end

    def new
        @scientist = Scientist.new
    end

    def create
        @scientist = Scientist.new(scientist_params)

        if @scientist.valid?
            @scientist.save
            redirect_to scientist_path(@scientist)
        else
            render :new
        end
    end

    def edit
        id = params[:id]
        @scientist = Scientist.find(id)
    end

    def update
        id = params[:id]
        @scientist = Scientist.find(id)
        @scientist.update(scientist_params)
        redirect_to scientist_path(@scientist)
    end

    def destroy
        id = params[:id]
        @scientist = Scientist.find(id)
        @scientist.destroy
        redirect_to scientists_path
    end

    private

    def scientist_params
        params.require(:scientist).permit(:name, :field_of_study)
    end
end
