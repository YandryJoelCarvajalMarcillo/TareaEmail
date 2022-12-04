class Email {
  final int id;
  final String from;
  final String subject;
  final String imageUrl;
  final DateTime dateTime;
  final String body;
  bool read;

  Email({
    required this.id,
    required this.from,
    required this.subject,
    required this.imageUrl,
    required this.dateTime,
    required this.body,
    this.read = false,
  });
}
