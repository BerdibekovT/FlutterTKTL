import 'package:flutter/material.dart';



class CardWidget extends StatefulWidget {
  const CardWidget({super.key});
  static const String route = '/mywidget';

  @override
  _CardWidgetState createState() => _CardWidgetState();
}
class _CardWidgetState extends State<CardWidget> {
  bool _DescriptionIsVisible = false;
  void _toggleDescriptionVisibility() {
    setState(() {
      _DescriptionIsVisible = !_DescriptionIsVisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Widget'),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    "https://www.gallery-aaldering.com/wp-content/uploads/gallery/35942722/35942722-32.jpg?v=16",
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 12.0),
                const Text(
                  'Mercedec-Benz SLR McLaren ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                if (_DescriptionIsVisible)
                  const Text(
                    ' суперкар, выпускавшийся совместно немецкой компанией Mercedes-Benz и британским производителем McLaren Automotive с 2003 по 2009 год. Сборка автомобиля производилась в Портсмуте и технологическом центре McLaren в Уокинге, графство Суррей, Англия[1][2]. На момент разработки суперкара немецкому производителю Mercedes-Benz принадлежало 40% акций McLaren Group. Название «SLR» представляет собой аббревиатуру и обозначает «Sport Leicht Rennsport» (в переводе с немецкого: «спортивный лёгкий гоночный»), что является данью уважения легендарному автомобилю Mercedes-Benz 300 SLR, который и послужил вдохновением при создании данной модели[3]. С завода суперкар производился только в двух цветах — серебристый и чёрный. Предлагался вариант кузова купе, спидстер и родстер.',
                    style: TextStyle(fontSize: 16.0, color: Colors.black87),
                  ),
                const SizedBox(height: 12.0),
                ElevatedButton(
                  onPressed: _toggleDescriptionVisibility,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    _DescriptionIsVisible ? "Hide Description" : "Show Description",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}