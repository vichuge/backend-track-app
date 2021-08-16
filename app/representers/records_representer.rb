class RecordsRepresenter
  def initialize(records)
    @records = records
  end

  def as_json
    records.map do |record|
      {
        id: record.id,
        times: record.times,
        list: List.find(record.list_id).title,
        date_added: record.created_at
      }
    end
  end

  private

  attr_reader :records
end
