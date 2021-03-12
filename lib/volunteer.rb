class Volunteer
  attr_reader :id
  attr_accessor :name, :project_id

  def initialize(attrs)
    @name = attrs[:name]
    @id = attrs[:id]
    @project_id = attrs[:project_id]
  end



end