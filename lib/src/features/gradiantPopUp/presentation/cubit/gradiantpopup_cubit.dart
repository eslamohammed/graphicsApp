import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'gradiantpopup_state.dart';

class GradiantpopupCubit extends Cubit<GradiantpopupState> {
  GradiantpopupCubit() : super(GradiantpopupInitial());
}
