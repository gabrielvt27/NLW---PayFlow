import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/models/boleto_model.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/themes/appcolors.dart';
import 'package:payflow/shared/widgets/boleot_info/boleto_info.dart';
import 'package:payflow/shared/widgets/boleto_list/boleto_list.dart';
import 'package:payflow/shared/widgets/boleto_list/boleto_list_controller.dart';

class MeusBoletos extends StatefulWidget {
  const MeusBoletos({Key? key}) : super(key: key);

  @override
  _MeusBoletosState createState() => _MeusBoletosState();
}

class _MeusBoletosState extends State<MeusBoletos> {
  final controller = BoletoListController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(children: [
            Container(
              color: AppColors.primary,
              height: 40,
              width: double.maxFinite,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ValueListenableBuilder<List<BoletoModel>>(
                valueListenable: controller.boletosNotifier,
                builder: (_, boletos, __) => AnimatedCard(
                    direction: AnimatedCardDirection.top,
                    child: BoletoInfo(size: boletos.length)),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Row(
              children: [
                Text(
                  "Meus boletos",
                  style: TextStyles.titleBoldHeading,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            child: Divider(
              thickness: 1,
              height: 1,
              color: AppColors.stroke,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: BoletoList(
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }
}
