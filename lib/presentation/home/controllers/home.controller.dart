import 'package:coding_challange/infrastructure/helpers/app_assets.dart';
import 'package:coding_challange/presentation/home/home.screen.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final activeProfile = 0.obs;
  final List<MenuModel> menuList = [
    MenuModel(
        title: 'Business details',
        subTitle: 'Logo, Name, Contact information...'),
    MenuModel(
        title: 'Quotations', subTitle: 'Quotation list, create quotations...'),
    MenuModel(title: 'Manage staff', subTitle: 'Add, Manage, Delete...'),
    MenuModel(
        title: 'Invoice templates',
        subTitle: 'Select templates, change colors...'),
    MenuModel(
        title: 'Payment information',
        subTitle: 'Payment options, instructions...'),
    MenuModel(title: 'Tax', subTitle: 'Tax options'),
    MenuModel(
        title: 'Default notes', subTitle: 'Invoice notes, Estimate notes'),
    MenuModel(
        title: 'Customization options',
        subTitle: 'Invoice no., Quantity label, Invoice title...'),
    MenuModel(title: 'Export', subTitle: ''),
  ];

  final List<CompanyProfileModel> availableCompanies = [
    CompanyProfileModel(
        companyName: 'James & Sons',
        businessEmail: 'example@gmail.com',
        businessPhoneNumber: '08133993323',
        businessAddress: 'No. 2 Ikeja Street, off Allen Avenue....'),
    CompanyProfileModel(
        companyName: 'James & Sons',
        businessEmail: 'example@gmail.com',
        businessPhoneNumber: '08133993323',
        businessAddress: 'No. 7 Victoria island, off Ikoyi....',
        businessLogo: AppAssets.businessOneIcon)
  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
