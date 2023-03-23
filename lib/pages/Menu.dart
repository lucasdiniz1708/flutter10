part of '../main.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Negocio XX-XX')),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text('Menu'),
                decoration: BoxDecoration(color: Colors.green),
              ),
              ListTile(
                title: Text('Item1'),
                onTap: (() {}),
              ),
              ListTile(
                title: Text('Item2'),
                onTap: (() {}),
              ),
              ListTile(
                title: Text('Item3'),
                onTap: (() {}),
              )
            ],
          ),
        ),
        body: Observer(
            builder: ((_) => ListView(
                  children: [
                    Center(child: Text('Informações necessárias')),
                    ListTile(
                      title: Text('Coordenadas'),
                      leading: Icon(Icons.map),
                      trailing: TextButton(
                        onPressed: null,
                        child: TextButton(
                          child: Text('Pegar coordenadas'),
                          onPressed: (() {
                            Navigator.pushNamed(context, '/sobre');
                          }),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text('Descrição do circuito'),
                      leading: Icon(Icons.chrome_reader_mode),
                      trailing: TextButton(
                        onPressed: null,
                        child: TextButton(
                          child: Text('Questões'),
                          onPressed: (() {
                            Navigator.pushNamed(context, '/quest');
                          }),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text('Dados'),
                      leading: Icon(Icons.layers_sharp),
                      trailing: TextButton(
                        onPressed: null,
                        child: TextButton(
                          child: Text('Ir para check'),
                          onPressed: (() {
                            Navigator.pushNamed(context, '/check');
                          }),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text('Fotos'),
                      leading: Icon(Icons.camera),
                      trailing: TextButton(
                        onPressed: null,
                        child: TextButton(
                          child: Text('Fotos'),
                          onPressed: (() {
                            Navigator.pushNamed(context, '/teste');
                          }),
                        ),
                      ),
                    ),
                    Container(width: 300, height: 300),
                    ElevatedButton(onPressed: () {}, child: Text('Finalizar')),
                  ],
                ))));
  }
}
