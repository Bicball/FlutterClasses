import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
        theme: ThemeData(
          // Define o padrão de brilho e cor
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],

          // Define a família da fonte padrão.
          fontFamily: 'Calibre',

          // Define o `TextTheme` padrão.
          textTheme: const TextTheme(
            titleLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            bodyLarge: TextStyle(fontSize: 44.0, fontWeight: FontWeight.bold),
            bodyMedium: TextStyle(fontSize: 22.0),
            bodySmall: TextStyle(fontSize: 11.0, fontFamily: 'Hind'),
          ),
        ),
      home: Scaffold(
        appBar: null,
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.width,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(8.0),
                      margin: const EdgeInsets.only(left: 4.0,  right: 4.0, bottom: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: NetworkImage('https://github.com/bicball.png'),
                              colorFilter: ColorFilter.mode(Colors.white54, BlendMode.dstATop),
                              fit: BoxFit.fill)
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Instituto Federal de Educação, Ciência e Tecnologia do Piauí', style: TextStyle(fontSize: 14.0,fontStyle: FontStyle.italic)),
                          Text('Prof. Me.  Marcel Moura', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: null,
                      child: Container(
                        width: double.maxFinite,
                        margin: const EdgeInsets.only(left: 4.0,  right: 4.0, bottom: 10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10), color: Colors.white12),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Work', style: TextStyle(fontSize: 16),),
                              Text('marcel.moura@ifpi.edu.br', style: TextStyle(color: Colors.blue),),
                              Divider(
                                color: Colors.white12,
                                thickness: 1,
                              ),
                              Text('Personal', style: TextStyle(fontSize: 16),),
                              Text('bicmoura@gmail.com', style: TextStyle(color: Colors.blue),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: const EdgeInsets.only(left: 4.0,  right: 4.0, bottom: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10), color: Colors.white12),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('GitHub', style: TextStyle(fontSize: 16),),
                            Text('https://github.com/Bicball', style: TextStyle(color: Colors.blue),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: const EdgeInsets.only(left: 4.0,  right: 4.0, bottom: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10), color: Colors.white12),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('LinkedIn', style: TextStyle(fontSize: 16),),
                            Text('https://www.linkedin.com/in/marcel-moura-209166123/', style: TextStyle(color: Colors.blue),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: const EdgeInsets.only(left: 4.0,  right: 4.0, bottom: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10), color: Colors.white12),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Phone', style: TextStyle(fontSize: 16),),
                            Text('(86) 99952-0303', style: TextStyle(color: Colors.blue),),
                            Divider(
                              color: Colors.white12,
                              thickness: 1,
                            ),
                            Text('WhatsAPp', style: TextStyle(fontSize: 16),),
                            Text('(86) 99952-0303', style: TextStyle(color: Colors.blue),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
