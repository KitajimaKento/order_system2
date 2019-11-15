class OrderSelectsController < ApplicationController
  protect_from_forgery
  skip_before_action :verify_authenticity_token
  before_action :set_order_select, only: [:show, :edit, :update, :destroy]

#全部読む
  # GET /order_selects
  # GET /order_selects.json
  def index
    @order_selects = OrderSelect.all
    render json: { status: 'SUCCESS', message: 'Loaded posts', data: @order_selects }
  end

#一つ読む
  # GET /order_selects/1
  # GET /order_selects/1.json
  def show
    render json: { status: 'SUCCESS', message: 'Loaded the post', data: @order_selects }
  end

  #order_selects/condition/:order_select
  # 条件で表示
  def condition
    @order_select = OrderSelect.where('order_ID = ?', params[:order_ID]) #or(OrderSelect.where('menu_ID = ?', params[:menu_ID]))
    render json: { status: 'SUCCESS', message: 'Loaded posts', data: @order_select }
  end

  # POST /order_selects
  # POST /order_selects.json
  def create
    @order_select = OrderSelect.new(order_select_params)

    if @order_select.save
       render json: { status: 'SUCCESS', data: @order_select }
    else
      render json: { status: 'ERROR', data: @order_select.errors }
    end
  end

  # PATCH/PUT /order_selects/1
  # PATCH/PUT /order_selects/1.json
  def update
    if @order_select.update(order_select_params)
     render json: { status: 'SUCCESS', message: 'Updated the post' }
    else
      render json: { status: 'SUCCESS', message: 'Not updated' }
    end
  end

  # DELETE /order_selects/1
  # DELETE /order_selects/1.json
  def destroy
    if @order_select.destroy
    render :json => { status: 'SUCCESS', message: 'Deleted the post' }
    else
      render :json => { status: 'Error', message: 'Error post' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_select
      @order_select = OrderSelect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_select_params
      params.require(:order_select).permit(:order_ID, :menu_ID)
    end
end
