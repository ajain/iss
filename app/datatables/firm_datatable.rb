class FirmDatatable < AjaxDatatablesRails::Base

  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['firms.firm_short_name']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['firms.firm_short_name']
  end

  private

  def data
    records.map do |record|
      [
        record.firm_short_name,
        record.firm_legal_name,
        record.email,
        record.website,
        record.created_at,
        record.updated_at
      ]
    end
  end

  def get_raw_records
    Firm.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
