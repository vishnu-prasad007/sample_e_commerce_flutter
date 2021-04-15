class BrandModel {
  String brandname;
  String brandLogoLink;
  BrandModel(this.brandname, this.brandLogoLink);
}

List<BrandModel> brandModelList = [
  BrandModel('Samsung',
      'https://1000logos.net/wp-content/uploads/2017/06/Logo-Samsung-500x333.png'),
  BrandModel('Sony',
      'https://seeklogo.com/images/S/sony-logo-9A5581F3B3-seeklogo.com.png'),
  BrandModel('Whirlpool',
      'https://seeklogo.com/images/W/Whirlpool-logo-62B1C2A198-seeklogo.com.png'),
  BrandModel('HP',
      'https://seeklogo.com/images/H/hp-logo-EEECF99DCE-seeklogo.com.png'),
  BrandModel('Dell',
      'https://seeklogo.com/images/D/dell-logo-49B6BF5FC9-seeklogo.com.png'),
  BrandModel('AMD',
      'https://seeklogo.com/images/A/AMD-logo-2847522454-seeklogo.com.png'),
  BrandModel('Nvidia',
      'https://seeklogo.com/images/N/NVIDIA-logo-BA019CBFAA-seeklogo.com.png')
];
