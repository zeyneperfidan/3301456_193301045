import 'package:flutter/material.dart';


class user extends StatefulWidget {
  const user({Key? key}) : super(key: key);

  @override
  _userState createState() => _userState();
}

class _userState extends State<user> {
  bool valuefirst = true;
  bool valuesecond = false;
  bool valuetherd = false;
  bool valueFour = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          centerTitle: true,
          title: Text(
            " Hesap Ayarları",
          ),
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Card(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(6),
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) => AlertDialog(
                                    title: Text("Kullanıcı Adını Değiştir"),
                                    content: TextFormField(
                                      onChanged: (value) {
                                        print(value);
                                      },
                                      decoration: InputDecoration(
                                        labelText: 'Yeni Kullanıcı Adı',
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                    actions: <Widget>[
                                      MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context, 'İptal');
                                        },
                                        child: const Text('İptal'),
                                      ),
                                      MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context, 'Güncelle');
                                        },
                                        child: const Text('Güncelle'),
                                      ),
                                    ],
                                  ));
                            },
                            style: ElevatedButton.styleFrom(primary: Colors.white),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Kullanıcı Adını Değiştir',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          ElevatedButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) => AlertDialog(
                                    title: Text("Şifreyi Değiştir"),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        TextFormField(
                                          obscureText: true,
                                          onChanged: (value) {
                                            print(value);
                                          },
                                          decoration: InputDecoration(
                                            labelText: 'Eski Şifre',
                                            border: OutlineInputBorder(),

                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        TextFormField(
                                          obscureText: true,
                                          onChanged: (value) {
                                            print(value);
                                          },
                                          decoration: InputDecoration(
                                            labelText: 'Yeni Şifre',
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        TextFormField(
                                          obscureText: true,
                                          onChanged: (value) {
                                            print(value);
                                          },
                                          decoration: InputDecoration(
                                            labelText: 'Yeni Şifreyi Onayla',
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ],
                                    ),
                                    actions: <Widget>[
                                      MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context, 'İptal');
                                        },
                                        child: const Text('İptal'),
                                      ),
                                      MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context, 'Güncelle');
                                        },
                                        child: const Text('Güncelle'),
                                      ),
                                    ],
                                  ));
                            },

                            style: ElevatedButton.styleFrom(primary: Colors.white),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Şifreyi Değiştir',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          ElevatedButton(
                            onPressed: () {
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: Text('Telefon Numarasını Değiştir'),
                                  content: TextFormField(
                                    onChanged: (value) {
                                      print(value);
                                    },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      labelText: 'Telefon Numarası',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  actions: <Widget>[
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.pop(context, 'İptal');
                                      },
                                      child: const Text('İptal'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.pop(context, 'Güncelle');
                                      },
                                      child: const Text('Güncelle'),
                                    ),
                                  ],
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(primary: Colors.white),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Telefon Numarasını Değiştir ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                  ),
                ]))));
  }
}