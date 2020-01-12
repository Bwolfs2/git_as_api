import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:git_as_api/app/modules/home/home_controller.dart';
import 'package:git_as_api/app/modules/home/home_module.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeModule.to.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(
        builder: (BuildContext context) {
          return ListView.builder(
            itemCount: controller.experiencias.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(controller.experiencias[index].nomeEmpresa),
                subtitle: Text(controller.experiencias[index].cargo),
              );
            },
          );
        },
      ),
    );
  }
}
