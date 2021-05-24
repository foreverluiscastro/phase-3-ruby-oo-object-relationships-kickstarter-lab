class Project
    attr_accessor :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end
    
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        new_list = ProjectBacker.all.select do |list|
            list.project == self
        end
        new_list.map do |list|
            list.backer
        end
    end
end