import 'package:flutter/material.dart';
import 'package:sample_e_commerce_flutter/colors.dart';
import 'package:sample_e_commerce_flutter/models/dashboard_model.dart';

List<Color> dashBoardIconColors = [
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.yellow
];

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: BrandColors.greyColor,
      ),
      body: GridView.builder(
          itemCount: dashBoardModelList.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, int index) {
            return Container(
              padding: EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {},
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.turned_in_sharp,
                        color: dashBoardIconColors[index],
                        size: 36.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(dashBoardModelList[index].name),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(dashBoardModelList[index].data)
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
