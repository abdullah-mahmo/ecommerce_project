import 'package:get/state_manager.dart';

abstract class OnBoardingcontroller extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingcontroller {
  int? currentPage;
  @override
  next() {
    // TODO: implement next
    throw UnimplementedError();
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    throw UnimplementedError();
  }
}
