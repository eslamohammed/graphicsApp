import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'profilepage_state.dart';

class ProfilepageCubit extends Cubit<ProfilepageState> {
  ProfilepageCubit() : super(ProfilepageInitial());
}
