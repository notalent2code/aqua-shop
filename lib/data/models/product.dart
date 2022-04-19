import 'package:aqua_shop/ui/styles/constants.dart';
import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Tilapia",
      price: 5,
      description: "Tilapia are mainly freshwater fish inhabiting shallow streams, ponds, rivers, and lakes, and less commonly found living in brackish water",
      image: "assets/images/tilapia.png",
      color: secondaryColor
      ),
  Product(
      id: 2,
      title: "Catfish",
      price: 2,
      description: "Catfish are a diverse group of ray-finned fish. Named for their prominent barbels, which resemble a cat's whiskers",
      image: "assets/images/catfish.png",
      color: secondaryColor
      ),
  Product(
      id: 3,
      title: "Carp",
      price: 6,
      description: "Carp are various species of oily freshwater fish from the family Cyprinidae, a very large group of fish native to Europe and Asia",
      image: "assets/images/carp.png",
      color: secondaryColor
      ),
  Product(
      id: 4,
      title: "Salmon",
      price: 15,
      description: "Salmon is a common food fish classified as an oily fish with a rich content of protein and omega-3 fatty acids",
      image: "assets/images/salmon.png",
      color: secondaryColor
      ),
  Product(
      id: 5,
      title: "Rainbow Trout",
      price: 12,
      description: "The rainbow trout is a trout and species of salmonid native to cold-water tributaries of the Pacific Ocean in Asia and North America",
      image: "assets/images/rainbow-trout.png",
      color: secondaryColor
      ),
  Product(
    id: 6,
    title: "Pike",
    price: 10,
    description: "Esox is a genus of freshwater fish commonly known as pike or pickerel",
    image: "assets/images/pike.png",
    color: secondaryColor,
  ),
];

