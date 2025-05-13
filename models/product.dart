class Product {
  final String name, description, image;
  final double price;
  int quantity;

  Product({required this.name, required this.description, required this.image, required this.price, this.quantity = 1});
}

List<Product> products = [
  Product(name: "Dog Leash", description: "Durable and comfy leash.", image: "assets/Leash.jpg", price: 12.0),
  Product(name: "Dog Bowl", description: "Non-slip ceramic bowl.", image: "assets/DogBowl.jpg", price: 8.0),
  Product(name: "Dog Toy", description: "Amazing and safe toy.", image: "assets/DogToy.jpg", price: 5.0),
  Product(name: "Fish Food", description: "Nutritious pellets.", image: "assets/FishFood.jpg", price: 6.0),
  Product(name: "Hamster Wheel", description: "Silent running wheel.", image: "assets/HamsterWheel.jpg", price: 15.0),
  Product(name: "Pet Shampoo", description: "Gentle and fragrant.", image: "assets/Shampoo.jpg", price: 10.0),
];

List<Product> cartItems = [];
