module CategoryDecorator
  include Common

  def created_at_label
    format_datetime(created_at)
  end

  def updated_at_label
    format_datetime(updated_at)
  end
end
