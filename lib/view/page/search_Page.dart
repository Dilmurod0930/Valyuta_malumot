import 'package:flutter/cupertino.dart';
import 'package:valyuta/core/components/boxdecoration.dart';
import 'package:valyuta/core/constants/Data/bayroq_const.dart';
import 'package:valyuta/core/constants/fontWeight_const.dart';
import 'package:valyuta/models/currence_model.dart';
import 'package:valyuta/widgets/currences.dart';
import 'package:valyuta/widgets/my_text.dart';

class SearchPage extends StatefulWidget {
  final List<CurrencyModel> currencyModel;
  const SearchPage({required this.currencyModel, Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  List<CurrencyModel> _temp = [];
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.050),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: CupertinoSearchTextField(
              decoration: MyBoxdecoration.decoration(),
              controller: _controller,
              onChanged: (text) {
                _temp.clear();
                for (CurrencyModel curren in widget.currencyModel) {
                  if (text.isEmpty) {
                    _temp.clear();
                    setState(() {});
                  } else if (curren.title.toString().toLowerCase().contains(
                        text.toString(),
                      )) {
                    _temp.add(curren);
                    setState(() {});
                  }
                }
              },
            ),
          ),
          _controller.text.isNotEmpty
              ? Expanded(
                  flex: 15,
                  child: ListView.builder(
                    itemCount: _temp.length,
                    itemBuilder: (_, __) {
                      return Currencsies(
                          img: FlagData.flagList[__],
                          cb_price: _temp[__].cbPrice.toString(),
                          date: _temp[__].date.toString().substring(1, 8),
                          code: _temp[__].code.toString(),
                          title: _temp[__].title.toString());
                    },
                  ),
                )
              : const Expanded(
                  flex: 15,
                  child: Center(
                    child: Mytext(
                      text: '<---->',
                      fontWeight: FontWeightConst.w3,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
