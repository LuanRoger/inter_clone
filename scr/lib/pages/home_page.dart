import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inter_clone/pages/widgets/debit_value_viewer.dart';
import 'package:inter_clone/pages/widgets/inter_app_bar.dart';
import 'package:inter_clone/pages/widgets/large_icon_button.dart';
import 'package:inter_clone/pages/widgets/redirect_large_image_button.dart';
import 'package:inter_clone/pages/widgets/secundary_services_button.dart';
import 'package:inter_clone/pages/widgets/services_button.dart';
import 'package:inter_clone/shared/app_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onStart() {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Color.fromRGBO(0, 0, 0, 0.2)));
  }

  @override
  Widget build(BuildContext context) {
    onStart();

    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const InterAppBar(),
                const SizedBox(height: 5),
                const DebitValueViewer(),
                TextButton(onPressed: () {}, child: const Text("Ver extrato")),
                const SizedBox(height: 8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          LargeIconButton("Cartões", Icons.credit_card),
                          LargeIconButton("Pagamentos",
                              Icons.account_balance_wallet_outlined),
                          LargeIconButton("Investir", Icons.bar_chart_rounded)
                        ]),
                    const Icon(Icons.expand_more_rounded, size: 35)
                  ],
                ),
                const SizedBox(height: 27),
                Column(children: [
                  ServicesButton(AppImages.INTER_SHOP_BANNER, "Inter Shop"),
                  const SizedBox(height: 12),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ServicesButton(AppImages.INTER_CEL_BANNER, "Inter Cel",
                            width: 180),
                        ServicesButton(AppImages.INTER_PASS_BANNER, "Inter Pass",
                            width: 180)
                      ])
                ]),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SecundaryServiceButton(Icons.games_rounded, "Arcade"),
                    SecundaryServiceButton(
                        Icons.card_giftcard_rounded, "Gift Card"),
                    SecundaryServiceButton(Icons.price_check_rounded, "Recarga"),
                    SecundaryServiceButton(Icons.more_horiz_rounded, "Ver todos")
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    RedirectLargeImageButton("Precisa de ajuda?",
                        "Converse com a gente pelo chat. A Babi vai te ajudar.",
                        icon: Icons.support_agent_rounded),
                    const SizedBox(height: 10),
                    RedirectLargeImageButton("ISafe e Internet Banking",
                        "Veja seu ISafe ou acesse o internet Banking via QR Code.",
                        icon: Icons.shield_rounded)
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
