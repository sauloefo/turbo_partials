module ApplicationHelper
  def field_frame_id (model:, field:)
    "#{dom_id(model)}_#{field}"
  end

  def render_field (model:, field:, edit_state: false)
    return render partial: "partials/edit_field", locals: {model: model, field: field} if edit_state

    render partial: "partials/show_field", locals: {model: model, field: field}
  end

end
