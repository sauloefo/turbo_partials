class PartialsController < ApplicationController
  before_action :set_model, :set_field

  def edit
  end

  def show
  end

  private

    def set_model
      @model = params[:model].classify.constantize.find(params[:id])
    end

    def set_field
      @field = params[:field]
    end
end
