module ApplicationHelper
  def partial_id (model, field_name)
    "#{dom_id(model)}_#{field_name}"
  end

  def render_field (model:, field:)
    render partial: "partials/show", locals: {model: model, field: field}
  end

end
