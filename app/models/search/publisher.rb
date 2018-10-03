class Search::Publisher < Search::Base
  ATTRIBUTES = %i(name)
  attr_accessor(*ATTRIBUTES)

  def search
    results = ::Publisher.all
    results = results.where(contains(publisher_table[:name], name)) if name.present? 
    results = results.order(:name)
    results
  end

  private

    def publisher_table
      ::Publisher.arel_table
    end
end