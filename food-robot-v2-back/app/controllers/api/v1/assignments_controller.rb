module Api
  module V1
    class AssignmentsController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_assignment, only: [:show, :update, :destroy]
    
      # GET /assignments
      def index
        @assignments = Assignment.all
    
        render json: @assignments
      end
    
      # GET /assignments/1
      def show
        render json: @assignment
      end
    
      # POST /assignments
      def create
        @assignment = Assignment.new(assignment_params)
    
        if @assignment.save
          render json: @assignment, status: :created, location: @assignment
        else
          render json: @assignment.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /assignments/1
      def update
        if @assignment.update(assignment_params)
          render json: @assignment
        else
          render json: @assignment.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /assignments/1
      def destroy
        @assignment.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_assignment
          @assignment = Assignment.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def assignment_params
          params.require(:assignment).permit(:volunteer_id, :region_id, :admin)
        end
    end
  end
end