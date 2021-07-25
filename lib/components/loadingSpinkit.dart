import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Loading extends StatelessWidget {
  const Loading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      height: mheight * .778,
      child: Center(
        child: Wrap(
            // child: SpinKitCubeGrid(
            //   color: Colors.black,
            //   size: 50,
            // ),

            children: [
              Container(
                height: 60,
                width: 60,
                child: LoadingIndicator(
                  indicatorType: Indicator.ballTrianglePath,
                  color: Colors.black,
                ),
              )
            ]),
      ),
    );
  }
}
