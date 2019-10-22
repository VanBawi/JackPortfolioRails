class PortfoliosController < ApplicationController
    # before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]

    def index
        @portfolio_items = Portfolio.all
    end


    def new
        @portfolio_item = Portfolio.new
    end

    def create
        @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))
        respond_to do |format|
            if @portfolio_item.save
              format.html { redirect_to @portfolio_item, notice: 'portfolio_item was successfully created.' }
              format.json { render :show, status: :created, location: @portfolio_item }
            else
              format.html { render :new }
              format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
            end
          end
    end

    def show
    end

    def edit
        @portfolio_item = Portfolio.find(params[:id])

    end

    def update
        @portfolio_item = Portfolio.find(params[:id])
        respond_to do |format|
          if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
            format.html { redirect_to portfolios_path, notice: 'portfolio_item was successfully updated.' }
            format.json { render :show, status: :ok, location: @portfolio_item }
          else
            format.html { render :edit }
            format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
          end
        end
      end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
    end
end
