module Admin::ProductsHelper
  def status_collections
    @status_collections ||= Product.statuses.keys.map { |status| [t("enums.product.status.#{status}"), status] }
  end
end
