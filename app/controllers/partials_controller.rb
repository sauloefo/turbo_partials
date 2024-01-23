class PartialsController < ApplicationController
  def edit
    set_model
    set_field
  end

  private

    def set_model
      @model = params[:model].classify.constantize.find(params[:id])
    end

    def set_field
      @field = params[:field]
    end
end
