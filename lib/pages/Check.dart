part of '../main.dart';

class CheckScreen extends StatefulWidget {
  @override
  _CheckScreenState createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Negocio XX-XX')),
        ),
        body: Observer(
            builder: ((_) => Column(
                  children: [
                    Column(children: [
                      Container(
                        width: 100,
                        height: 100,
                      ),
                      Center(
                          child:
                              Text('Qual será o local o local da instalação?')),
                      CheckboxListTile(
                          title: Text("Solo"),
                          //secondary: Icon(Icons.beach_access),
                          controlAffinity: ListTileControlAffinity.trailing,
                          activeColor: Colors.green,
                          checkColor: Colors.black,
                          value: counter.altera,
                          onChanged: (value) {
                            setState(() {
                              counter.alterar();
                            });
                          }),
                      CheckboxListTile(
                          title: Text("Telhado Metalico"),
                          // secondary: Icon(Icons.beach_access),
                          controlAffinity: ListTileControlAffinity.trailing,
                          activeColor: Colors.green,
                          checkColor: Colors.black,
                          value: counter.altera,
                          onChanged: (value) {
                            setState(() {
                              counter.alterar();
                            });
                          }),
                      CheckboxListTile(
                          title: Text("Telhado Colonial"),
                          // secondary: Icon(Icons.beach_access),
                          controlAffinity: ListTileControlAffinity.trailing,
                          activeColor: Colors.green,
                          checkColor: Colors.black,
                          value: counter.altera,
                          onChanged: (value) {
                            setState(() {
                              counter.alterar();
                            });
                          }),
                    ]),
                    Container(
                      width: 100,
                      height: 100,
                    ),
                    Row(
                      children: [
                        Text('Local tem aterramento?'),
                        Expanded(
                            child: Column(
                          children: [
                            Text('Nao'),
                            Radio(
                                value: true,
                                groupValue: counter.altera,
                                onChanged: ((value) {
                                  setState(() {
                                    counter.alterar();
                                  });
                                })),
                          ],
                        )),
                        Expanded(
                            child: Column(
                          children: [
                            Text('Sim'),
                            Radio(
                                value: true,
                                groupValue: counter.altera,
                                onChanged: ((value) {
                                  setState(() {
                                    counter.alterar();
                                  });
                                })),
                          ],
                        )),
                      ],
                    )
                  ],
                ))));
  }
}
