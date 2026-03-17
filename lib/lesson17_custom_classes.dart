import 'package:flutter/material.dart';
import 'package:flutter_tutorial/quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(role: 'Jung, Captain', name: 'GG BangThan'),
    Quote(role: 'Mid', name: 'GG Miu'),
    Quote(role: 'Support', name: 'GG K'),
    Quote(role: 'Top', name: 'GG Long'),
    Quote(role: 'ADC', name: 'GG TiSon'),
    Quote(role: 'ADC, Sub', name: 'GG ThuHang'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => Text('${quote.role}: ${quote.name}')).toList(),
      ),
    );
  }
}

