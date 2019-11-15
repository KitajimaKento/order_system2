class OrdersController < ApplicationController
  protect_from_forgery
  skip_before_action :verify_authenticity_token
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
    render json: { status: 'SUCCESS', message: 'Loaded posts', data: @orders }
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    render json: { status: 'SUCCESS', message: 'Loaded the post', data: @order }
  end

  #orders/condition/:order_ID
  # 条件で表示
  def condition
    @order = Order.where('order_ID = ?', params[:order_ID]) #.or
    render json: { status: 'SUCCESS', message: 'Loaded posts', data: @order }
  end


  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
      if @order.save
         render json: { status: 'SUCCESS', data: @order }
      else
        render json: { status: 'ERROR', data: @order.errors }
      end
  end

#1つを更新
  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    if @order.update(order_params)
     render json: { status: 'SUCCESS', message: 'Updated the post' }
    else
      render json: { status: 'SUCCESS', message: 'Not updated' }
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    if @order.destroy
    render :json => { status: 'SUCCESS', message: 'Deleted the post' }
    else
      render :json => { status: 'Error', message: 'Error post' }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:order_ID, :menu_ID, :table_ID, :login_ID, :total, :total_tax_not, :status)
    end
end
