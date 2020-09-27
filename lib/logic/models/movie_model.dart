
class Movie {
  String name ;
  String imgUrl ;
  String description ;
  String shortDescritpion ;
  int hours ;
  int mins ;
  int reviews;
  double rate ;
  double metaScore ;

  Movie(this.name, this.imgUrl, this.description, this.shortDescritpion,
      this.hours, this.mins, this.reviews, this.rate, this.metaScore);


}
final List<Movie> recentMovies  = [
  Movie("Dunkirik" , "https://res.cloudinary.com/jerrick/image/upload/fl_progressive,q_auto,w_1024/jdrk5glr5li9oya2iji6.jpg" , "During World War II, soldiers from the British Empire, Belgium and France try to evacuate from the town of Dunkirk during a arduous battle with German forces.","During World War II, soldiers from the British Empire..." ,1 , 85 , 198 , 9.8,8.1),
  Movie("The Hateful \nEaght" , "https://witsvuvuzela.com/wp-content/uploads/2016/02/25_hateful-eight-poster-2.jpg" ,"A bounty hunter and his captured fugitive are caught in the middle of a snowstorm. They seek refuge at a small lodge and encounter a twisted turn of events there." , "They seek refuge at a small lodge and encounter...",1 , 85 , 198 , 9.8,8.1),
  Movie("The Revenant" , "https://i.ytimg.com/vi/QRfj1VCg16Y/maxresdefault.jpg" ,"Hugh Glass, a legendary frontiersman, is severely injured in a bear attack and is abandoned by his hunting crew. He uses his skills to survive and take revenge on his companion who betrayed him." , "his companion who betrayed him...",1 , 85 , 198 , 9.8,8.1),
  Movie("Undisputed II \nLast Man Standing" , "https://images-na.ssl-images-amazon.com/images/I/71x7ZQ51tVL._AC_SL1000_.jpg" ,"After being framed for possessing drugs, George is sent to a Russian prison, where he realises that boxing against inmate Yuri Boyka is the only way out." , " Yuri Boyka is the only way out...",1 , 85 , 600 , 7.5,9.4)

];
final List<Movie> popularMovies  = [
  Movie("Dead Pool 2" , "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6218/6218708_so.jpg" ,"Deadpool protects a young mutant Russell from the authorities and gets thrown in prison. However, he escapes and forms a team of mutants to prevent a time-travelling mercenary from killing Russell." , "time-travelling mercenary from killing Russell...",1 , 59 , 150 , 7.8,8.1),
  Movie("Shazam" , "https://www.scifi-movies.com/images/contenu/data/0004790/affiche-shazam-2019-4.jpg" ,"After being abandoned at a fair, Billy constantly searches for his mother. His life, however, takes a huge turn when he inherits the superpowers of a powerful wizard." , "superpowers of a powerful wizard....",2 , 10 , 205 , 8.5,9.1),
  Movie("Harry Potter 3" , "https://cdn.europosters.eu/image/1300/posters/harry-potter-6-harry-teaser-i6617.jpg" ,"Harry, Ron and Hermoine return to Hogwarts just as they learn about Sirius Black and his plans to kill Harry. However, when Harry runs into him, he learns that the truth is far from reality." , "he learns that the truth is far from reality....",1 , 45 , 500 , 5.5,7.1),

];


