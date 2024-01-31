/// Class representing onboarding information.
class OnboardingInfo {
  /// Creates a new [OnboardingInfo] instance.
  ///
  /// The [title], [description], and [image] parameters must not be null.
  const OnboardingInfo({
    required this.title,
    required this.description,
    required this.image,
  });

  /// Title of the onboarding information.
  final String title;

  /// Description of the onboarding information.
  final String description;

  /// Image associated with the onboarding information.
  final String image;
}
