import 'package:flutter/material.dart';
import 'package:valyuta/core/constants/Data/bayroq_const.dart';
import 'package:valyuta/models/currence_model.dart';
import 'package:valyuta/widgets/currences.dart';

class HomePage extends StatelessWidget {
  final List<CurrencyModel> currencyModel;
  const HomePage({required this.currencyModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: ListView.builder(
        itemCount: currencyModel.length,
        itemBuilder: (context, index) {
          return Currencsies(
              img: FlagData.flagList[index],
              cb_price: currencyModel[index].cbPrice.toString(),
              date: currencyModel[index].date.toString().substring(1, 8),
              code: currencyModel[index].code.toString(),
              title: currencyModel[index].title.toString());
        },
      ),
    );
  }
}
