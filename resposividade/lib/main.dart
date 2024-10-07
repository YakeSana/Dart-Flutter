import 'package:flutter/material.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App responsivo',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: LayoutResponsivo(),
    );
  }
}

class LayoutResponsivo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu App'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return constraints.maxWidth <= 768 ?
            MobileLayout():
            WebLayout();
        },
      ),
    );
  }
}

class MobileLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return MobileLayoutState();
  }
}

class MobileLayoutState extends State <MobileLayout> with SingleTickerProviderStateMixin{
  TabController? tabController;

  @override
  void initState(){
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }
  
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        TabBar(
          labelColor: Colors.black,
          controller: tabController,
          tabs: const [
            Tab(text: 'Aba 1'),Tab(text: 'Aba 2')
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: const[
              Center(
                child: Text("Conteúdo da Aba 1"),
              ),
              Center(
                child: Text("Conteúdo da aba 2"),
              )
            ],
          )
        ),
      ],
    );
  }
}

class WebLayout extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return WebLayoutState();
  }
}

class WebLayoutState extends State<WebLayout>{
  @override
  Widget build(BuildContext context){
    return const Row(
      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child:Card(
            child: Center(
              child: Text("Conteúdo da primeira aba"),
            ),
          )
        ),
        Expanded(
          child:Card(
            child: Center(
              child: Text("Conteúdo da segunda aba"),
            ),
          )
        )
      ],
    );
  }
}
