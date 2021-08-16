module Api
  module V1
    class ListsController < ApplicationController
      before_action :set_list, only: :destroy
      # GET /lists
      def index
        @lists = List.all
        render json: ListsRepresenter.new(@lists).as_json
      end

      # POST /list
      def create
        @list = List.create(list_params)
        if @list.save
          render json: ListRepresenter.new(@list).as_json, status: :created
        else
          render json: @list.errors, status: :unprocessable_entity
        end
      end

      # DELETE /lists/:id
      def destroy
        @list.destroy
        head :no_content
      end

      private

      def list_params
        params.permit(:title, :icon)
      end

      def set_list
        @list = List.find(params[:id])
      end
    end
  end
end
