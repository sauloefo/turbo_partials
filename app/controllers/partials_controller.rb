class PartialsController < ApplicationController
  before_action :set_model, :set_field

  def edit
    render partial: "partials/edit_field", locals: {model: @model, field: @field}
  end

  def show
    render partial: "partials/show_field", locals: {model: @model, field: @field}
  end

  private

    def set_model
      @model = params[:model].classify.constantize.find(params[:id])
    end

    def set_field
      @field = params[:field]
    end
end
