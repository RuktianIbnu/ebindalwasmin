import 'package:flutter/material.dart';
import 'package:eBindalwasmin/Screens/Beranda/drawerpage.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class HomePage extends StatefulWidget {
  final Widget child;
  HomePage({Key key, this.child}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<charts.Series<Task, String>> _seriesPieData;

  _generateData() {
    var piedata = [
      new Task('ITAS 1 tahun', 35.8, Color(0xff3366cc)),
      new Task('ITAP 1 tahun', 8.3, Color(0xff990099)),
      new Task('ITK 1 tahun', 10.8, Color(0xff109618)),
      new Task('ITAS 6 bulan', 15.6, Color(0xfffdbe19)),
      new Task('ITAP 6 bulan', 19.2, Color(0xffff9900)),
      new Task('ITK 6 bulan', 10.3, Color(0xffdc3912)),
    ];

    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Air Pollution',
        data: piedata,
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _seriesPieData = List<charts.Series<Task, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beranda"),
        backgroundColor: Colors.purple,
      ),
      drawer: DrawerPage(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Text(
              'Jumlah pemohon paspor periode Januari s.d bulan saat terkini',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: charts.PieChart(
                _seriesPieData,
                animate: true,
                animationDuration: Duration(seconds: 1),
                behaviors: [
                  new charts.DatumLegend(
                    outsideJustification:
                        charts.OutsideJustification.endDrawArea,
                    horizontalFirst: false,
                    desiredMaxRows: 2,
                    cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                    entryTextStyle: charts.TextStyleSpec(
                      color: charts.MaterialPalette.purple.shadeDefault,
                      fontFamily: 'Georgia',
                      fontSize: 11,
                    ),
                  ),
                ],
                defaultRenderer: new charts.ArcRendererConfig(
                  arcWidth: 50,
                  arcRendererDecorators: [
                    new charts.ArcLabelDecorator(
                      labelPosition: charts.ArcLabelPosition.inside,
                    )
                  ],
                ),
              ),
            ),
            Divider(),
            Text(
              'Jumlah pemohon paspor periode Januari s.d bulan saat terkini',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: charts.PieChart(
                _seriesPieData,
                animate: true,
                animationDuration: Duration(seconds: 1),
                behaviors: [
                  new charts.DatumLegend(
                    outsideJustification:
                        charts.OutsideJustification.endDrawArea,
                    horizontalFirst: false,
                    desiredMaxRows: 2,
                    cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                    entryTextStyle: charts.TextStyleSpec(
                      color: charts.MaterialPalette.purple.shadeDefault,
                      fontFamily: 'Georgia',
                      fontSize: 11,
                    ),
                  ),
                ],
                defaultRenderer: new charts.ArcRendererConfig(
                  arcWidth: 50,
                  arcRendererDecorators: [
                    new charts.ArcLabelDecorator(
                      labelPosition: charts.ArcLabelPosition.inside,
                    )
                  ],
                ),
              ),
            ),
            Divider(),
            Text(
              'Jumlah pemohon paspor periode Januari s.d bulan saat terkini',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: charts.PieChart(
                _seriesPieData,
                animate: true,
                animationDuration: Duration(seconds: 1),
                behaviors: [
                  new charts.DatumLegend(
                    outsideJustification:
                        charts.OutsideJustification.endDrawArea,
                    horizontalFirst: false,
                    desiredMaxRows: 2,
                    cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                    entryTextStyle: charts.TextStyleSpec(
                      color: charts.MaterialPalette.purple.shadeDefault,
                      fontFamily: 'Georgia',
                      fontSize: 11,
                    ),
                  ),
                ],
                defaultRenderer: new charts.ArcRendererConfig(
                  arcWidth: 50,
                  arcRendererDecorators: [
                    new charts.ArcLabelDecorator(
                      labelPosition: charts.ArcLabelPosition.inside,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}
