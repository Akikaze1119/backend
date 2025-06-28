class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show update destroy ]

  # GET /orders
  def index
    @orders = Order.all
  end

  # GET /orders/1
  def show
  end

  # POST /orders
  def create
    @order = Order.new(order_params)

    if @order.save
      render :show, status: :created, location: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orders/1
  def update
        render :show, status: :ok, location: @order
      else
        render json: @order.errors, status: :unprocessable_entity
      end
  end

  # DELETE /orders/1
  def destroy
    @order.destroy!

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.expect(order: [ :progress, :description, :estimated_finish_date, :status, :client_name, :client_email ])
    end
end
