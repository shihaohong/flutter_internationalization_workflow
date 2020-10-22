import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:internationalizations_workflow/kurdish_localization.dart'; // Add this line.

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     localizationsDelegates: [
       KuMaterialLocalizations.delegate,
       KuWidgetLocalizations.delegate,
       ... AppLocalizations.localizationsDelegates,
     ],
     supportedLocales: [
       Locale('ku'),
       ...AppLocalizations.supportedLocales,
     ],
     home: MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: Localizations.override(
        context: context,
        locale: Locale('ku'),
        child: Center(
          child: Builder(
            builder: (BuildContext context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AboutListTile(
                    applicationName: 'مرحبا بالعالم',
                  ),
                  Row(
                    children: [
                      Text('Item 1'),
                      Text('Item 2'),
                      Text('Item 3'),
                    ],
                  ),
                  // Text(AppLocalizations.of(context).helloWorld),
                  // Text(AppLocalizations.of(context).anotherHello),
                  // Text(AppLocalizations.of(context).aThirdHello),
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
