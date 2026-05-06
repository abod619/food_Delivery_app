class UnbordingContent{
  String image;
  String title;
  String description;
  UnbordingContent({required this.image, required this.title, required this.description});
}

List<UnbordingContent> contents = [
  UnbordingContent(image: "images/screen1.png", title: "Select from our\n      Best Menu", description: 'Pick your food from our menu\n      More than 35 times'),
  UnbordingContent(image: "images/screen2.png", title: 'Easy and Online Payment', description: "You can pay cash on delivery and\n     Card payment is available"),
  UnbordingContent(image: "images/screen3.png", title: 'Quick Delivery at Your Doorstep', description: "Deliver your food at your \n    Doorstep")
];