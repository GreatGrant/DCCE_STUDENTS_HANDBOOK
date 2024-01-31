import 'package:dcce_handbook/onboarding/onboarding_info.dart';
/// This class represents a collection of onboarding items.
///
/// This class provides a static list of [OnboardingInfo] instances,
/// each containing title, description, and image information to be used in onboarding screens.
class OnboardingItem {

  /// Static list of onboarding information items.
  static List<OnboardingInfo> items = [
    const OnboardingInfo(
      title: "Embark on Your Academic Journey",
      description: "Explore the rich history, philosophy, and curriculum that define our department. "
          "Let's dive into the foundation of your educational experience.",
      image: 'assets/onboarding_gif/learning.gif',
    ),
    const OnboardingInfo(
      title: "Discover Our Heritage",
      description: "Discover the roots of DCCE's legacy. "
          "Learn about the milestones, achievements, and influential figures that have shaped our department's history.",
      image: 'assets/onboarding_gif/college_students.gif',
    ),
    const OnboardingInfo(
      title: "Chart Your Course",
      description: "Navigate through the academic landscape with ease. "
          "From the first year to the final year, our detailed syllabus provides a roadmap for your educational journey.",
      image: 'assets/onboarding_gif/navigation.gif',
    ),
    const OnboardingInfo(
      title: "Embrace Our Vision",
      description: "Immerse yourself in the core philosophy that drives DCCE. "
          "Understand our commitment to academic excellence, innovation, and personal growth "
          "and how it prepares you for a successful and fulfilling future.",
      image: 'assets/onboarding_gif/sun_and_moon.gif',
    ),
  ];
}
