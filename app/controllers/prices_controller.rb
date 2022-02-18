class PricesController < ApplicationController
  protect_from_forgery prepend: true
  
  def index
    @all_prices = Price.all
    @all_prices.each do |i|
      i.vendor_name = Vendor.find(i.vendor_id).name
      i.part_description = Part.find(i.part_id).description
    end
  end

  def new
    @price=Price.new
  end

  def create
    @price=Price.new(vendor_id: params[:price][:vendor_id],
      part_id: params[:price][:part_id],
      catalog_no: params[:price][:catalog_no],
      price: params[:price][:price])

    if @price.save
      redirect_to action: "index"
    else
      render :new
    end
  end

  def edit
    @price = Price.find(params[:id])
    render :new
  end

  def update
    @price = Price.find(params[:price][:id])
    if @price.update(
      vendor_id: params[:price][:vendor_id],
      part_id: params[:price][:part_id],
      catalog_no: params[:price][:catalog_no],
      price: params[:price][:price]
    )
      redirect_to action: "index"
    else
      render :new
    end
  end

  def delete
    @price = Price.find(params[:id])
    @price.destroy
    redirect_to action: "index"
  end
end
