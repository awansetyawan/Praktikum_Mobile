class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Your Book Explorer",
    image: "assets/screen1.png",
    desc: "Explore our latest book collection, book your favorites, and enjoy an unforgettable reading experience.",
  ),
  OnboardingContents(
    title: "Search, Booking, Read",
    image: "assets/screen2.png",
    desc : "With Book Library, you can search for the books you desire, book them, and start reading anytime, anywhere.",
  ),
  OnboardingContents(
    title: "Welcome to Book Library",
    image: "assets/book_logo.png",
    desc : "Discover the world of knowledge at your fingertips. Start your reading journey with our app!",
  ),
];