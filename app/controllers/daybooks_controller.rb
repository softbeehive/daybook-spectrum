class DaybooksController < ApplicationController

  def index
    @daybook = Daybook.all

    respond_to do |format|
      format.html
    end
  end

  def show
    @user = Daybook.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @daybook = Daybook.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @daybook = Daybook.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def create
    @daybook = Daybook.new(params[:daybook])

    respond_to do |format|
      if @daybook.save
        format.html {redirect_to @daybook, notice: 'Daybook type was successfully created'}
      else
        format.html {render action: "new"}
      end
    end
  end

  def update
    @daybook = Daybook.find(params[:id])

    respond_to do |format|
      if @daybook.update_attributes(params[:daybook])
        format.html {redirect_to @daybook, notice: 'Daybook type was successfully updated'}
      else
        format.html {render action: "edit"}
      end
    end
  end

  def destroy
    @daybook = Daybook.find(params[:id])
    @daybook.destroy

    respond_to do |format|
      format.html {redirect_to daybooks_url}
    end
end

end
