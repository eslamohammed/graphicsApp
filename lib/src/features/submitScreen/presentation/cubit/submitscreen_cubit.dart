import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'submitscreen_state.dart';

class SubmitscreenCubit extends Cubit<SubmitscreenState> {
  SubmitscreenCubit() : super(SubmitscreenInitial());
}
