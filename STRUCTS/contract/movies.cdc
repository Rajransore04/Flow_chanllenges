pub contract MoviesContract {
    pub var Movies: {String: Movie}
    
    pub struct Movie {
        pub let Title: String
        pub let Year: Int
        pub let Director: String

        init(_Title: String, _Year: Int, _Director: String) {
            self.Title = _Title
            self.Year = _Year
            self.Director = _Director
        }
    }

    pub fun addMovie(Title: String, Year: Int, Director: String) {
        let newMovie = Movie(_Title: Title, _Year: Year, _Director: Director)
        self.Movies[Title] = newMovie
    }
    
    init() {
        self.Movies = {}
    }
}
