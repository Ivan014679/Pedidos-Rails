class VendorsController < ApplicationController
  protect_from_forgery prepend: true
  
  def index
    @all_vendors = Vendor.all
    @all_vendors.each do |i|
      i.city_name = City.find(i.city).name
      i.region_name = Region.find(i.region).name
    end
  end

  def new
    @vendor=Vendor.new
  end

  def create
    @vendor=Vendor.new(name: params[:vendor][:name],
      address: params[:vendor][:address],
      city: params[:vendor][:city],
      phone: params[:vendor][:phone],
      region: params[:vendor][:region])

    if @vendor.save
      redirect_to action: "index"
    else
      render :new
    end
  end

  def edit
    @vendor = Vendor.find(params[:id])
    render :new
  end

  def update
    @vendor = Vendor.find(params[:vendor][:id])
    if @vendor.update(
      name: params[:vendor][:name],
      address: params[:vendor][:address],
      city: params[:vendor][:city],
      phone: params[:vendor][:phone],
      region: params[:vendor][:region]
    )
      redirect_to action: "index"
    else
      render :new
    end
  end

  def delete
    @vendor = Vendor.find(params[:id])
    @vendor.destroy
    redirect_to action: "index"
  end
end
