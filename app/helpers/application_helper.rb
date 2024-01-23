module ApplicationHelper
  def field_frame_id (model:, field:)
    "#{dom_id(model)}_#{field}"
  end

  def render_field (model:, field:)
    render partial: "partials/show", locals: {model: model, field: field}
  end

end
