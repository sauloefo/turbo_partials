class PartialsController < ApplicationController
  def edit
    set_model
    set_field_name
  end

  private

    def set_model
      @model = params[:model_name].classify.constantize.find(params[:id])
    end

    def set_field_name
      @field_name = params[:field_name]
    end
end
