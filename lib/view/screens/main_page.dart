import 'package:flutter/material.dart';
import 'package:valyuta/service/currency_Service.dart';
import 'package:valyuta/view/page/exchange_Page.dart';
import 'package:valyuta/view/page/search_Page.dart';
import 'package:valyuta/view/screens/currense_home_page.dart';
import 'package:valyuta/widgets/my_text.dart';
import 'package:valyuta/widgets/navigater_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Mytext(
          text: 'Currency',
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        titleSpacing: 2,
      ),
      bottomNavigationBar: MyBar(
          index: index,
          onTap: (v) {
            setState(() {
              index = v;
            });
          }),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Expanded(
          child: FutureBuilder(
            future: CurrencyService.getCurrency(),
            builder: ((context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Mytext(text: 'ERROR'),
                );
              } else {
                var data = snapshot.data!;
                List pages = [
                  HomePage(currencyModel: data),
                  ExchangePage(data: data),
                  SearchPage(currencyModel: data),
                ];
                return pages[index];
              }
            }),
          ),
        ),
      ),
    );
  }
}
