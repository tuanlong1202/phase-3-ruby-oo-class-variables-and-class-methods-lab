class Song

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def name
        @name
    end

    def artist
        @artist
    end

    def genre
        @genre
    end
    
    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        hashRet = {}
        @@genres.each do |g|
            if !hashRet.include?(g)
                hashRet[g] = 1
            else
                hashRet[g] += 1
            end
        end
        hashRet
    end
    def self.artist_count
        hashRet = {}
        @@artists.each do |a|
            if !hashRet.include?(a)
                hashRet[a] = 1
            else 
                hashRet[a] += 1
            end
        end
        hashRet
    end
end