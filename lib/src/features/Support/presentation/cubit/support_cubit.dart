import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'support_state.dart';

class SupportCubit extends Cubit<SupportState> {
  SupportCubit() : super(SupportInitial());
}
