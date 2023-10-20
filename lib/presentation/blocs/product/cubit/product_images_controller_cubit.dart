import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/constants/main.dart';

class ProductImagesControllerCubit extends Cubit<int> {
  ProductImagesControllerCubit() : super(0);

  void nextImage() {
    if (state + 1 == numOfProductPageImages) return;

    emit(state + 1);
  }

  void previousImage() {
    if (state - 1 < 0) return;

    emit(state - 1);
  }
}
