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
        icon: List.find(record.list_id).icon,
        date_added: record.created_at,
        user_id: record.user_id
      }
    end
  end

  private

  attr_reader :records
end
