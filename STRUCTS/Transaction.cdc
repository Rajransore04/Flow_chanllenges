import MoviesContract from 0x01

transaction(Title: String, Year: Int, Director: String) {

  prepare(signer: AuthAccount) {}

  execute {
    MoviesContract.addMovie(Title: Title, Year: Year, Director: Director)
    log("Movie added")
  }
}
