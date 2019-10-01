class CerficationsController < ApplicationController
    def index
        @cerfications = Cerfication.all
        render json: @cerfications
      end
    
      def show
        @cerfication = Cerfication.find(params[:id])
        render json: @cerfication
      end
    
      def create
        @cerfication = Cerfication.create(strong_params)
        render json: @cerfication, status: 201
      end
    
      def update
        @cerfication = Cerfication.find(params[:id])
        unless @cerfication.nil?
          @cerfication.update(strong_params)
          render json: @cerfication
        else
          render json: { error: "Cerfication not Found!" }, status: 404
        end
      end
    
      def destroy
        @cerfication = Cerfication.find(params[:id])
        unless @cerfication.nil?
          @cerfication.destroy
          render json: @cerfication
        else
          render json: { error: "Cerfication not Found!" }, status: 404
        end
      end
    
      private
      def strong_params
        params.require(:cerfication).permit(:id, :name, :demo, :image, :github)
      end
end
