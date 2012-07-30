class ScientistsController < ApplicationController
  def index
    @scientists = Scientist.all
  end

  def new
    @scientist = Scientist.new
  end

  def show
    @scientist = Scientist.find(params[:id])
  end

  def edit
    @scientist = Scientist.find(params[:id])
  end

  def create
    @scientist = Scientist.new(params[:scientist])

    respond_to do |format|
      if @scientist.save
        format.html {redirect_to @scientist, notice: 'Scientist\'s post was successfully created'}
      else
        format.html {render action: "new"}
      end
    end
  end

  def update
    @scientist = Scientist.find(params[:id])

    respond_to do |format|
      if @scientist.update_attributes(params[:scientist])
        format.html {redirect_to scientists_path, notice: 'Scientist\'s post was successfully updated'}
      else
        format.html {render action: "edit"}
      end
    end
  end

  def destroy
    @scientist = Scientist.find(params[:id])
    @scientist.destroy

    respond_to do |format|
      format.html {redirect_to scientists_path}
    end
  end
end
