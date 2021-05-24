class Backer
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        new_array = ProjectBacker.all.select do |list|
            list.backer == self
        end
        new_array.map do |list|
            list.project
        end
    end


end
