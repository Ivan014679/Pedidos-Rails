class PurchaseOrdersController < ApplicationController
  protect_from_forgery prepend: true

  def index
    @all_pch_ord=PurchaseOrder.all
    @get_lastid_pch_ord=PurchaseOrder.count
    @all_pch_ord.each do |i|
      if i.vendor == nil
        i.vendor_name = nil
      else
        i.vendor_name = Vendor.find(i.vendor).name
      end
    end
  end

  def new
    @pch_ord=PurchaseOrder.new

    @products = Price.all
    @products.each do |i|
      i.part_description = Part.find(i.part_id).description
      i.quantity = 0
    end
  end

  def create
    @pch_ord=PurchaseOrder.new(bill_number: params[:purchase_order][:bill_number],
      date: params[:purchase_order][:date])

    @products = Price.all
    @products.each do |i|
      i.part_description = Part.find(i.part_id).description
      i.quantity = 0
    end

    if @pch_ord.save
      @pch_ord = PurchaseOrder.find_by(bill_number: @pch_ord.bill_number)
      render :new
    else
      redirect_to action: "index"
    end
  end

  def edit
    @pch_ord = PurchaseOrder.find(params[:id])

    @products = Price.all
    @products.each do |i|
      i.part_description = Part.find(i.part_id).description
      i.quantity = 0
    end

    render :new
  end

  def update
    @pch_ord = PurchaseOrder.find(params[:purchase_order][:id])
    if @pch_ord.update(
      bill_number: params[:purchase_order][:bill_number],
      date: params[:purchase_order][:date],
      vendor: params[:purchase_order][:vendor]
    )
      redirect_to action: "index"
    else
      render :new
    end
  end

  def delete
    @pch_ord = PurchaseOrder.find(params[:id])
    @pch_ord.destroy
    redirect_to action: "index"
  end
end
