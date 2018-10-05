module CommonScope
  extend ActiveSupport::Concern
 
  included do
    scope :contains, ->(arel_attribute, value) { where(arel_attribute.matches("%#{value}%")) }
  end
end