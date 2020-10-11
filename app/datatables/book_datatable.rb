class BookDatatable < AjaxDatatablesRails::ActiveRecord

  def_delegator :@view, :link_to

  def initialize(params, opts = {})
    @view = opts[:view_context]
    @book = params
  end

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      id: { source: "Book.id", cond: :like },
      title: { source: "Book.title", cond: :like },
      description: { source: "Book.description", cond: :like },
    }
  end

  def data
    records.map do |record|
      {
        # example:
        id: record.id,
        title: link_to(record.title, '')
      }
    end
  end

  # def get_raw_records
  #   insert query here
  #   Book.all
  # end
  
end
