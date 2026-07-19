class Experience {
  final String role;
  final String company;
  final String employmentType;
  final String location;
  final String? locationType;
  final String periodLabel;
  final String duration;
  final String summary;
  final List<String> details;

  const Experience({
    required this.role,
    required this.company,
    required this.employmentType,
    required this.location,
    this.locationType,
    required this.periodLabel,
    required this.duration,
    required this.summary,
    required this.details,
  });
}
