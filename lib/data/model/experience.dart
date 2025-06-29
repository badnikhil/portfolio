class Experience {
  final DateTime startDate;
  final DateTime endDate;
  final String company;
  final String position;
  final JobType type;
  final List<String> responsibilities;
  final String? githubLink;

  Experience({
    required this.company,
    required this.position,
    required this.responsibilities,
    required this.startDate,
    required this.endDate,
    this.type = JobType.fullTime,
    this.githubLink,
  });
}

enum JobType {
  fullTime,
  partTime,
  remote,
}
