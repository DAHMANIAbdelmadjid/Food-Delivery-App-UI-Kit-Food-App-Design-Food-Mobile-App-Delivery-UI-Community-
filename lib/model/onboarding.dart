class OnboardingData {
  final String image;
  final String icon;
  final String title;

  final String next;

  OnboardingData({
    required this.image,
    required this.icon,
    required this.title,
        required this.next,

  });
}

// البيانات الثلاث
final List<OnboardingData> onboardingPages = [
  OnboardingData(
    image: 'assets/image/Rectangle 145.png',
    icon: 'assets/icon/Transfer Document icon.svg',
    title: 'Order for Food', next: 'Next',
   ),
  OnboardingData(
    image: 'assets/image/Rectangle 146.png',
    icon: 'assets/icon/Card icon.svg',
    title: 'Easy Payment', next: 'Next',
      ),
  OnboardingData(
    image: 'assets/image/Rectangle 147.png',
    icon: 'assets/icon/Deliver Boy Icon.svg',
    title: 'Fast Delivery', next: 'Get Started',
     ),
];
