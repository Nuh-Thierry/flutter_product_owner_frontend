class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent({
    required this.description,
    required this.image,
    required this.title,
  });
}

List<OnboardingContent> contents = [
  OnboardingContent(
    description:
        'Gérez votre menu, vos commandes et vos ingrédients depuis notre application facile à utiliser',
    image: 'assets/images/image.jpg',
    title: 'Gérez votre restaurant depuis notre application',
  ),
  OnboardingContent(
    description:
        'Soyez informé dès qu\'une commande arrive et n\'attendez plus pour commencer à la préparer',
    image: 'assets/images/image1.png',
    title: 'Acceptez les commandes en temps réel',
  ),
  OnboardingContent(
    description: 'Notre équipe de support est là pour vous aider à tout moment',
    image: 'assets/images/image2.png',
    title: 'Gérez votre restaurant depuis notre application',
  ),
];
