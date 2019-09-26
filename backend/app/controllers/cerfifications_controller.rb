class CerfificationsController < ApplicationController
    def index
        @cerfifications = Cerfification.all
        render json: @cerfifications
      end
    
      def show
        @cerfification = Cerfification.find(params[:id])
        render json: @cerfification
      end
    
      def create
        @cerfification = Cerfification.create(strong_params)
        render json: @cerfification, status: 201
      end
    
      def update
        @cerfification = Cerfification.find(params[:id])
        unless @cerfification.nil?
          @cerfification.update(strong_params)
          render json: @cerfification
        else
          render json: { error: "Cerfification not Found!" }, status: 404
        end
      end
    
      def destroy
        @cerfification = Cerfification.find(params[:id])
        unless @cerfification.nil?
          @cerfification.destroy
          render json: @cerfification
        else
          render json: { error: "Cerfification not Found!" }, status: 404
        end
      end
    
      private
      def strong_params
        params.require(:cerfification).permit(:id, :name, :demo, :image, :github)
      end
end
