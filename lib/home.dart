import 'package:flutter/material.dart';
import 'package:maqraa/color.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late ProgressDialog _pd;

  @override
  void initState() {
    _pd = ProgressDialog(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://maqraa.com/ar',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (v) {
            _pd.show(
              max: 100,
              msg: 'Loading ...',
              progressType: ProgressType.valuable,
              progressValueColor: AppColors.defaultColor,
            );
          },
          onProgress: (v) {
            _pd.update(value: v, msg: 'Loading $v%');
            return;
          },
          onPageFinished: (v) {
            _pd.close();
            return;
          },
        ),
      ),
    );
  }
}
