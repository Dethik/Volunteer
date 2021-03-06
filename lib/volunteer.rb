class Volunteer
  attr_reader :id
  attr_accessor :name, :project_id

  def initialize(attrs)
    @name = attrs[:name]
    @id = attrs[:id]
    @project_id = attrs[:project_id]
  end

  def ==(volunteer_to_compare)
    if volunteer_to_compare != nil
      (self.name() == volunteer_to_compare.name()) && (self.project_id() == volunteer_to_compare.project_id())
    else
      false
    end
  end

  def self.all
    results = DB.exec("SELECT * FROM volunteers;")
    volunteers = []
    results.each do |volunteer|
      name = volunteer["name"]
      id = volunteer["id"].to_i
      project_id = volunteer["project_id"].to_i
      volunteers.push(Volunteer.new({:name => name, :project_id => project_id, :id => id}))
    end
    volunteers
  end

  def save
    result = DB.exec("INSERT INTO volunteers (name, project_id) VALUES ('#{@name}', #{@project_id}) RETURNING id;")
    @id = result.first["id"].to_i
  end

  def self.clear
    DB.exec("DELETE FROM volunteers *;")
  end

  def self.find(id)
    volunteer = DB.exec("SELECT * FROM volunteers WHERE id = #{id};").first
    if volunteer
      name = volunteer["name"]
      project_id = volunteer["project_id"].to_i
      id = volunteer["id"].to_i
      Volunteer.new({:name => name, :project_id => project_id, :id => id})
    else
      nil
    end
  end

  def update(name, project_id)
    @name = name
    @project_id = project_id
    DB.exec("UPDATE volunteers SET name = '#{@name}', project_id = #{@project_id} WHERE id = #{@id};")
  end

  def delete
    DB.exec("DELETE FROM volunteers WHERE id = #{@id};")
  end

  def self.name
    result = DB.exec("SELECT * FROM volunteers WHERE id = #{@id};")
    name = result.first["name"]
    name
  end

  def self.id
    result = DB.exec("SELECT * FROM volunteers WHERE id = #{@id}")
    id = result.first["id"].to_i
  end

  def self.project_id
    result = DB.exec("SELECT * FROM volunteers WHERE project_id = #{@project_id}")
    result.first["project_id"].to_int
  end

  def self.find_by_volunteer(proj_id)
    volunteers = []
    results = DB.exec("SELECT * FROM volunteers WHERE project_id = #{proj_id};")
    results.each() do |volunteer|
      name = volunteer["name"]
      id = volunteer["id"]
      volunteers.push(Volunteer.new({:name => name, :project_id => proj_id, :id => id }))
    end
    volunteers
  end

  def project
    Project.find(@project_id)
  end
end