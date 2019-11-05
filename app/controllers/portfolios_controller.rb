class PortfoliosController < ApplicationController
    before_action :set_portfolio_item, only: [:edit, :show, :update, :destroy]
    layout "portfolio"

    def index
      @portfolio_items = Portfolio.all.order(created_at: :desc)
        # @portfolio_items = Portfolio.ruby_on_rails_portfolio_items
    end

    def angular
      @angular_item = Portfolio.angular
    end

    def new
        @portfolio_item = Portfolio.new
        3.times { @portfolio_item.technologies.build}
    end

    def create
        @portfolio_item = Portfolio.new(portfolio_params)
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
    end

    def update
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

      def destroy
        @portfolio_item.destroy
        
        respond_to do |format|
          format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.' }
          format.json { head :no_content }
        end
      end



    private
    # Use callbacks to share common setup or constraints between actions.
    def portfolio_params
      params.require(:portfolio).permit(:title, 
                                        :subtitle, 
                                        :body,
                                        technologies_attributes: [:name])
    end

    def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
    end
end
