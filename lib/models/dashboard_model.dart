class DashBoardModel {
  String name;
  String data;
  DashBoardModel(this.name, this.data);
}

List<DashBoardModel> dashBoardModelList = [
  DashBoardModel('Total Tile', '50'),
  DashBoardModel('Available Tiles', '25'),
  DashBoardModel('Last Payment', '20/10/2020'),
  DashBoardModel('Expiry On', '20/11/2020')
];
