import 'package:dcce_handbook/onboarding/onboarding_info.dart';
import 'package:dcce_handbook/onboarding/onboarding_view.dart';

class OnboardingItem {
  
  static List<OnboardingInfo> items = [
    const OnboardingInfo(
        title: "Embark on Your Academic Journey",
        description: "Welcome to the DCCE Student's Handbook, "
            "your comprehensive guide to academic excellence. "
            "Explore the rich history, philosophy, and curriculum that define our department. "
            "Let's dive into the foundation of your educational experience.",
        image: 'assets/svg/undraw_agree.svg'
    ),
    const OnboardingInfo(
        title: "Discover Our Heritage",
        description: "Explore the roots of DCCE's legacy. "
            "Learn about the milestones, achievements, and influential figures that have shaped our department's history. "
            "This knowledge will connect you with the traditions and values that define our academic community",
        image: 'assets/svg/undraw_sharing_knowledge.svg'
    ),
    const OnboardingInfo(
        title: "Chart Your Course",
        description: "Navigate through the academic landscape with ease. "
            "From the first year to the final year, our detailed syllabus provides a roadmap for your educational journey. "
            "Get acquainted with the courses, modules, and milestones that will shape your learning experience.",
        image: 'assets/svg/undraw_coffee_with_friends.svg'
    ),
    const OnboardingInfo(
        title:  "Embrace Our Vision",
        description:  "Immerse yourself in the core philosophy that drives DCCE. "
            "Understand our commitment to academic excellence, innovation, and personal growth. "
            "This philosophy forms the foundation of your education, preparing you for a successful and fulfilling future.",
    image: 'assets/svg/undraw_programmer.svg'
    )
  ];
  
}
