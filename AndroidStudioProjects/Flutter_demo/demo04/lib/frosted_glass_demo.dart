import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: <Widget>[
          ConstrainedBox(//约束盒子组件,添加额外的约束条件child上
          constraints: const BoxConstraints.expand(),
          child: Image.network('http://dingyue.nosdn.127.net/WCnsri42=YMqmO0WCjJZJvKDdZ9NrDV14ITo2YQRppT=g1525766610409.jpg')

          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(//背景过滤器
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child:Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500.0,
                    height:700.0,
                    decoration: BoxDecoration(color:Colors.grey.shade200),
                    child: Center(
                      child: Text(
                        '赖美云', 
                        style: Theme.of(context).textTheme.display3),
                    )
                  )
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}