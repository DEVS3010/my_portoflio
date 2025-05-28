class CertificationModel {
  final String title;
  final String issuer;
  final String date;
  final String? credentialUrl;

  CertificationModel({
    required this.title,
    required this.issuer,
    required this.date,
    this.credentialUrl,
  });
}