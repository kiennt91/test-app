class Search::Publisher < Search::Base
  ATTRIBUTES = %i(name)
  attr_accessor(*ATTRIBUTES)

  def search
    results = ::Publisher.all
    results = results.where(contains(table[:name], name)) if name.present? 
    results = results.order(:name)
    results
  end

  private

    def table
      ::Publisher.arel_table
    end
end