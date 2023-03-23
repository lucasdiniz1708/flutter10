part of '../main.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double consumo = 0;
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Helo World'),
        ),
        body: Observer(
            builder: ((_) => Column(children: [
                  Column(
                    children: [
                      Container(
                        height: 200,
                        child: Center(
                          child: Text(
                            'Bem vindo ao app',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: (() {
                            Navigator.pushNamed(context, '/welcome');
                          }),
                          child: Text('Ir para Login')),
                      ElevatedButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStatePropertyAll<Color>(
                                  Colors.green)),
                          onPressed: (() {
                            Navigator.pushNamed(context, '/menu');
                          }),
                          child: Text('Modo Offline'))
                    ],
                  ),
                ]))));
  }
}
