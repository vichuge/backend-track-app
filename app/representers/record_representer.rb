class RecordRepresenter
  def initialize(record)
    @record = record
  end

  def as_json
    {
      id: record.id,
      times: record.times,
      list: List.find(record.list_id).title,
      date_added: record.created_at,
      user_id: record.user_id
    }
  end

  private

  attr_reader :record
end
