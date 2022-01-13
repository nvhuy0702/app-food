class Food{
  final String id;
  late final String name;
  late final String image;
  late final String category;
  late final String price;
  late final double discount;
  //late final double ratings;

  Food({
    required this.image,
    required this.name,
    required this.category,
    required this.discount, 
    required this.id,
    required this.price,
    //required this.ratings
  });  

}