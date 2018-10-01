class Search::Category < Search::Base
  attr_accessor :name

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