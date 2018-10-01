class Search::Base
  include ActiveModel::Model

  def contains(arel_attribute, value)
    arel_attribute.matches("%#{escape_like(value)}%")
  end

  def escape_like(string)
    string.gsub(/[\\%_]/) { |m| "\\#{m}" }
  end
end