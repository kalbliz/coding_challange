class CompanyProfileModel {
  final String companyName;
  final String businessEmail;
  final String businessPhoneNumber;
  final String businessAddress;
  final String? businessLogo;
  final String? businessCategory;
  final String? businessAmount;
  CompanyProfileModel({
    required this.companyName,
    required this.businessEmail,
    required this.businessPhoneNumber,
    required this.businessAddress,
    this.businessLogo,
    this.businessCategory,
    this.businessAmount,
  });
}
