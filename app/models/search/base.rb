class Search::Base
  include ActiveModel::Model

  def contains(arel_attribute, value)
    arel_attribute.matches("%#{escape_like(value)}%")
  end

  def escape_like(string)
    string.gsub(/[\\%_]/) { |m| "\\#{m}" }
  end

  def product_table
    ::Product.arel_table
  end

  def category_table
    ::Category.arel_table
  end

  def publisher_table
    ::Publisher.arel_table
  end
end