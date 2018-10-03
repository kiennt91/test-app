module ProductDecorator
  include Common

  def created_at_label
    format_datetime(created_at)
  end

  def updated_at_label
    format_datetime(updated_at)
  end

  def remaining_amount_label
    number_with_delimiter(remaining_amount)
  end

  def sell_amount_label
    number_with_delimiter(sell_amount)
  end

  def price_label
    number_with_delimiter(price)
  end

  def status_label
    status_i18n
  end
end
