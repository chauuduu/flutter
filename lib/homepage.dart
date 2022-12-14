import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) :super(key: key);
  final String src = "https://tuyensinhso.vn/images/files/tuyensinhso.com/truong-dai-hoc-khoa-hoc-dh-hue.JPG";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: "https://media.kenhtuyensinh.vn/images/cms/2018/08/diem-chuan-dai-hoc-khoa-hoc-dai-hoc-hue-nam-2018.jpg",
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Center(
                      child: CircularProgressIndicator(
                          value: downloadProgress.progress),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  )),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.23,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width * 0.55,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Tr?????ng ?????i h???c Khoa h???c",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      "Th??nh ph??? Hu???, Th???a Thi??n Hu???",
                                      style: TextStyle(
                                          color: Colors.grey, height: 1.5),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                )),
                            Container(
                                alignment: Alignment.topRight,
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Container(
                                 //margin: EdgeInsets.only(left: 40),
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star,color: Colors.red,),
                                      Text("41")
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        margin: EdgeInsets.only(left: 50, right: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.call,
                                    color: Colors.blue,
                                    size: 30,
                                  ),
                                  Text(
                                    "CALL",
                                    style: TextStyle(
                                      height: 2,
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.telegram,
                                    size: 30,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "ROUTE",
                                    style: TextStyle(
                                      height: 2,
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.share,
                                    size: 30,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "SHARE",
                                    style: TextStyle(
                                      height: 2,
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Text(
                  "Tr?????ng ?????i h???c Khoa h???c l?? m???t tr?????ng ?????i h???c thu???c h??? th???ng ?????i h???c Hu???, ???????c x???p v??o nh??m ?????i h???c tr???ng ??i???m c???p qu???c gia c???a Vi???t Nam. Tr?????ng c?? ti???n th??n l?? Tr?????ng ?????i h???c T???ng h???p Hu???, ???????c th??nh l???p tr??n c?? s??? s??p nh???p tr?????ng ?????i h???c Khoa h???c v?? tr?????ng ?????i h???c V??n khoa c???a Vi???n ?????i h???c Hu??? ???????c th??nh l???p t??? n??m 1957"),
            )
          ],
        ),
      ),
    );
  }
}