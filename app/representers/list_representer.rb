class ListRepresenter
  def initialize(list)
    @list = list
  end

  def as_json
    {
      id: list.id,
      title: list.title,
      icon: list.icon
    }
  end

  private

  attr_reader :list
end
