part of '../main.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Negocio XX-XX')),
        ),
        body: Observer(
            builder: ((_) => Center(
                    child: Column(
                  children: [
                    TextField(
                        decoration: InputDecoration(
                          hintText: 'Desecreva como será montado o circuito',
                        ),
                        keyboardType: TextInputType.text,
                        onChanged: counter.handleConsumoField),
                    ElevatedButton(
                        onPressed: counter.handleRegistrarButton,
                        child: Text('Registrar')),
                    TextField(
                        decoration: InputDecoration(
                          hintText: 'Desecreva como será montado o circuito',
                        ),
                        keyboardType: TextInputType.text,
                        onChanged: counter.handleConsumoField),
                    ElevatedButton(
                        onPressed: counter.handleRegistrarButton,
                        child: Text('Registrar')),
                  ],
                )))));
  }
}
