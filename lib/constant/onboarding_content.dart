class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent(
      {required this.image, required this.description, required this.title});
}

List<OnboardingContent> content = [
  OnboardingContent(
      image: 'assets/01.svg',
      description: "At the core of our algorithm, "
          "couriers, dictating the next delivery route to be executed by each courier.",
      title: 'Create Appointment Seemless'),
  OnboardingContent(
      image: 'assets/02.svg',
      description: "At the core of our algorithm, "
          "couriers, dictating the next delivery route to be executed by each courier.",
      title: 'It is simple '),
  OnboardingContent(
      image: 'assets/03.svg',
      description: "At the core of our algorithm, "
          "couriers, dictating the next delivery route to be executed by each courier.",
      title: 'Scalable for any Business size '),
];
