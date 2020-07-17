import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _temerature = 0.0;
  double _kelvin = 0.0;
  double _farenhite = 0;
  double _weightKilo = 0.0;
  double _weightLoob = 0.0;
  double _weightOz = 0.0;
  double _weightGram = 0.0;
  double _rupees = 0.0;
  double _dollars = 0.0;
  double _pounds = 0.0;
  double _indianRupee = 0.0;
  double _constIndianRupee = 2.46;
  final double _constDollar = 186.12;
  final double _constSterlin = 229.65;
  final double _constLoob = 2.20462262185;
  final double _constOz = 35.27396195;
  final int _thousand = 1000;
  String _dollarString = "0.0";
  String _poundString = "0.0";
  String _indianRupeeString = "0.0";

  void tempCalculations(double temp) {
    setState(() {
      _kelvin = (_temerature) + 273;
      _farenhite = (_temerature * 9 / 5) + 32;
    });
  }

  void weightCalculation(double _weightKilo) {
    _weightGram = _weightKilo * _thousand;

    _weightOz = _weightKilo * _constOz;

    _weightLoob = _weightKilo * _constLoob;
  }

  void currencyCalculation(double _rupees) {
    _indianRupee = _rupees / _constIndianRupee;

    _dollars = _rupees / _constDollar;

    _pounds = _rupees / _constSterlin;

    _dollarString = _dollars.toStringAsFixed(2);
    _poundString = _pounds.toStringAsFixed(2);
    _indianRupeeString = _indianRupee.toStringAsFixed(2);
  }

  void setTempToZero() {
    setState(() {
      _temerature = 0;
      _kelvin = 0;
      _farenhite = 0.0;
    });
  }

  void setWeightToZero() {
    setState(() {
      _weightGram = 0.0;
      _weightOz = 0.0;
      _weightLoob = 0.0;
    });
  }

  void setCurrencyToZero() {
    setState(() {
      _dollarString = "0.0";
      _poundString = "0.0";
      _indianRupeeString = "0.0";
    });
  }

  void setAllValuesToZero() {
    setState(() {
      _temerature = 0;
      _kelvin = 0;
      _farenhite = 0.0;
      _dollarString = "0.0";
      _poundString = "0.0";
      _indianRupeeString = "0.0";
      _weightGram = 0.0;
      _weightOz = 0.0;
      _weightLoob = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          accentColor: Colors.black,
          primaryColor: Colors.black),
      title: 'My first project',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black.withAlpha(100),
            bottom: TabBar(
              tabs: [
                Tab(
                    icon: Icon(Icons.ac_unit, color: Colors.yellow[300]),
                    child: Text('Temperature',
                        style: TextStyle(color: Colors.yellow[300]))),
                Tab(
                    icon: Icon(Icons.line_weight, color: Colors.yellow[300]),
                    child: Text('Weight',
                        style: TextStyle(color: Colors.yellow[300]))),
                Tab(
                    icon:
                        Icon(Icons.monetization_on, color: Colors.yellow[300]),
                    child: Text('Currency',
                        style: TextStyle(color: Colors.yellow[300]))),
              ],
            ),
            title: Text('Unit Converter',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.amber)),
          ),
          body: TabBarView(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.yellow[50],
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(50.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        autofocus: true,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(Icons.rotate_left),
                                onPressed: setTempToZero),
                            hintText: 'Celcius value',
                            hintStyle: TextStyle(
                                fontSize: 20.0, color: Colors.yellow[200]),
                            labelText: 'Enter temperature',
                            labelStyle:
                                (TextStyle(fontWeight: FontWeight.bold))),
                        cursorColor: Colors.black,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                        onSubmitted: (tempValue) {
                          _temerature = double.parse(tempValue);
                          print(_temerature);
                          setState(() {
                            tempCalculations(_temerature);
                          });
                        },
                      ),
                    ),
                    Text('Kelvin value is: $_kelvin',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                    Text('Fahrenhite value is: $_farenhite',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                    Text('Celcius value is: $_temerature',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.yellow[50],
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(50.0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          autofocus: true,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  icon: Icon(Icons.rotate_left),
                                  onPressed: setWeightToZero),
                              hintText: 'Kilogram value',
                              hintStyle: TextStyle(
                                  fontSize: 20.0, color: Colors.yellow[200]),
                              labelText: 'Enter weight ',
                              labelStyle:
                                  (TextStyle(fontWeight: FontWeight.bold))),
                          cursorColor: Colors.black,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                          onSubmitted: (_weight) {
                            _weightKilo = double.parse(_weight);
                            print(_weightKilo);
                            setState(() {
                              weightCalculation(_weightKilo);
                            });
                          },
                        ),
                      ),
                      Text('Gram value is: $_weightGram',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      Text('Loob value is: $_weightLoob',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      Text('Ounce value is: $_weightOz',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
              Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.yellow[50],
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(50.0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          autofocus: true,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  icon: Icon(Icons.rotate_left),
                                  onPressed: setCurrencyToZero),
                              hintText: 'LKR',
                              hintStyle: TextStyle(
                                  fontSize: 20.0, color: Colors.yellow[200]),
                              labelText: 'Currency',
                              labelStyle:
                                  (TextStyle(fontWeight: FontWeight.bold))),
                          cursorColor: Colors.black,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                          onSubmitted: (_slRupee) {
                            _rupees = double.parse(_slRupee);
                            print(_rupees);
                            setState(() {
                              currencyCalculation(_rupees);
                            });
                          },
                        ),
                      ),

                      Text('US Dollar value is: $_dollarString',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      Text('Pound sterling value is: $_poundString',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      Text('Indian rupee value is: $_indianRupeeString',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      //FloatingActionButton(onPressed: null, floatingActionButtonLocation: )
                    ],
                  )),
            ],
          ),
          floatingActionButton: FloatingActionButton(
              elevation: 50,
              hoverColor: Colors.red,
              autofocus: true,
              onPressed: () {
                setAllValuesToZero();
              },
              child: Icon(Icons.restore_page),
              backgroundColor: Colors.amber,
              tooltip: 'Reset this page'),
        ),
      ),
    );
  }
}
