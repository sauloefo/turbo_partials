module ApplicationHelper
  def partial_id (model, field_name)
    "#{dom_id(model)}_#{field_name}"
  end
end
