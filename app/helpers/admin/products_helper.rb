module Admin::ProductsHelper
  def status_collections
    @status_collections ||= Product.statuses.keys.map { |status| [t("enums.product.status.#{status}"), status] }
  end

  def status_collections_with_all
    @status_collections_with_all ||= status_collections.unshift(["すべて", "all"])
  end
end
