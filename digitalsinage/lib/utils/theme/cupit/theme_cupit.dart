import 'package:bloc/bloc.dart';
import 'package:digitalsinage/utils/theme/cupit/theme_state.dart';


class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(isDarkThemeOn: false));

  void updateTheme(bool value) => emit(ThemeState(isDarkThemeOn: value));
}


class ThemeState {
  final bool isDarkThemeOn;

  ThemeState({required this.isDarkThemeOn});
}