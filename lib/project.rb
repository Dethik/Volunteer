class Project
  attr_reader :id
  attr_accessor :name

  def initialize(attrs)
    @name = attrs[:name]
    @id = attrs[:id]
  end

  def self.all
    results = DB.exec("SELECT * FROM projects;")
    projects = []
    results.each do |project|
      name = project["name"]
      id = project["id"]
      projects.push(Project.new({:name => name, :id => id}))
    end
    projects
  end



end