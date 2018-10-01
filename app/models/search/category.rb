class Search::Category < Search::Base
  ATTRIBUTES = %i(name)
  attr_accessor(*ATTRIBUTES)

  def search
    results = ::Category.all
    results = results.where(contains(table[:name], name)) if name.present? 
    results = results.order(:name)
    results
  end

  private

    def table
      ::Category.arel_table
    end
end