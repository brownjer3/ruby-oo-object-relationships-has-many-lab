class Author
    attr_accessor :name

    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        Post.all.select {|p| p.author == self}
    end

    def add_post(post_obj)
        post_obj.author = self
    end

    def add_post_by_title(title)
        Post.new(title).author = self
    end

    def self.post_count
        Post.all.count
    end


end