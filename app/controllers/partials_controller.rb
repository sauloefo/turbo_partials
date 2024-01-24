class PartialsController < ApplicationController
  before_action :set_model, :set_field

  def edit
    helpers.render_field_form model: @model, field: @field
  end

  def show
    helpers.render_field model: @model, field: @field
  end

  private

    def set_model
      @model = params[:model].classify.constantize.find(params[:id])
    end

    def set_field
      @field = params[:field]
    end
end
