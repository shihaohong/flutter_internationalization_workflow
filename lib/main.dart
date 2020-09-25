import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Internationalization Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: MyHomePage(title: 'Internationalized App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('System localized "helloWorld" message": ${AppLocalizations.of(context).helloWorld}'),
            Localizations.override(
              context: context,
              locale: const Locale('en'),
              // Using a Builder here to get the correct BuildContext.
              child: Builder(
                builder: (BuildContext context) {
                  return Text('English "helloWorld" message: ${AppLocalizations.of(context).helloWorld}');
                }
              ),
            ),
            Localizations.override(
              context: context,
              locale: const Locale('es'),
              // Using a Builder here to get the correct BuildContext.
              child: Builder(
                builder: (BuildContext context) {
                  return Text('Spanish "helloWorld" message: ${AppLocalizations.of(context).helloWorld}');
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
