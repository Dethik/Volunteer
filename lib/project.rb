class Project
  attr_reader :id
  attr_accessor :title

  def initialize(attrs)
    @title = attrs[:title]
    @id = attrs[:id]
  end

  def self.all
    results = DB.exec("SELECT * FROM projects;")
    projects = []
    results.each do |project|
      title = project["title"]
      id = project["id"]
      projects.push(Project.new({:title => title, :id => id}))
    end
    projects
  end

  def save
    result = DB.exec("INSERT INTO projects (title) VALUES ('#{@title}') RETURNING id;")
    @id = result.first["id"].to_i
  end

  def ==(project_to_compare)
    self.title() == project_to_compare.title()
  end

  def self.clear
    DB.exec("DELETE FROM projects *;")
  end

  def self.find(id)
    project = DB.exec("SELECT * FROM projects WHERE id = #{id};").first
    if project
      title = project["title"]
      id = project["id"].to_i
      Project.new({:title => title, :id => id})
    else
      nil
    end
  end

  def update(title)
    @title = title
    DB.exec("UPDATE projects SET title = '#{@title}' WHERE id = #{@id};")
  end

  def delete
    DB.exec("DELETE FROM projects WHERE id = #{@id};")
  end

  def self.title
    result = DB.exec("SELECT * FROM projects WHERE id = #{@id};")
    title = result.first["title"]
    title
  end

  def self.id
    result = DB.exec("SELECT * FROM projects WHERE id = #{@id}")
    id = result.first["id"].to_i
  end

  def volunteers
    Volunteer.find_by_volunteer(self.id)
  end
end