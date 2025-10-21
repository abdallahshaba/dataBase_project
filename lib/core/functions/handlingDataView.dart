import 'package:e_commerce_app14/core/class/statusRequest.dart';
import 'package:e_commerce_app14/core/constant/imageAsset.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';


class HandlingDataView extends StatelessWidget {
  const HandlingDataView({
    super.key,
    required this.statusrequest,
    required this.widget,
  });

  final Statusrequest statusrequest;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
       return statusrequest == Statusrequest.loading ? Lottie.asset(AppImageAsset.laoding) :
       statusrequest == Statusrequest.failure ? Lottie.asset(AppImageAsset.failed) :
       statusrequest == Statusrequest.undefind ? Lottie.asset(AppImageAsset.noData) :
       statusrequest == Statusrequest.serverException ? Lottie.asset(AppImageAsset.failedFace) :
       statusrequest == Statusrequest.undefind ? Lottie.asset(AppImageAsset.noData) :
       statusrequest == Statusrequest.offlineFailure ? Lottie.asset(AppImageAsset.offline) : widget ;


  }
}
