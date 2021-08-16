module Api
  module V1
    class RecordsController < ApplicationController
      before_action :set_record, only: %i[update show destroy]
      # GET /records
      def index
        @records = Record.all
        render json: RecordsRepresenter.new(@records).as_json
      end

      # POST /record
      def create
        @record = Record.create(record_params)
        if @record.save
          render json: RecordRepresenter.new(@record).as_json, status: :created
        else
          render json: @record.errors, status: :unprocessable_entity
        end
      end

      # GET /records/:id
      def show
        render json: RecordRepresenter.new(@record).as_json
      end

      # PUT /records/:id
      def update
        @record.update(record_params)
        head :no_content
      end

      # DELETE /records/:id
      def destroy
        @record.destroy
        head :no_content
      end

      private

      def record_params
        params.permit(:times, :list_id)
      end

      def set_record
        @record = Record.find(params[:id])
      end
    end
  end
end
