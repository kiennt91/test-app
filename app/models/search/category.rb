class Search::Category < Search::Base
  attr_accessor :name

  validates :name, presence: true

  def search
    return ::Category.where(contains(table[:name], name))
  end

  private

    def table
      ::Category.arel_table
    end
end