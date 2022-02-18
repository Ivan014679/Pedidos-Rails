class PartsController < ApplicationController
  protect_from_forgery prepend: true
  
  def index
    @all_parts = Part.all
  end

  def new
    @part=Part.new
  end

  def create
    @part=Part.new(description: params[:part][:description])

    if @part.save
      redirect_to action: "index"
    else
      render :new
    end
  end

  def edit
    @part = Part.find(params[:id])
    render :new
  end

  def update
    @part = Part.find(params[:part][:id])
    if @part.update(description: params[:part][:description])
      redirect_to action: "index"
    else
      render :new
    end
  end

  def delete
    @part = Part.find(params[:id])
    @part.destroy
    redirect_to action: "index"
  end
end
