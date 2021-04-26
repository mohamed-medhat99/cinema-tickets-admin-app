import 'models/movies.dart';

List<Movie> getproductbyCategory(Kcomedy , List<Movie> allmovies) {
  List<Movie> movies =[];
  try{
    for(var movie in allmovies){
      if(movie.mDescription== Kcomedy){
        movies.add(movie);
      }
    }
  }on Error catch(ex){
    print(ex);
  }
  return movies;
}