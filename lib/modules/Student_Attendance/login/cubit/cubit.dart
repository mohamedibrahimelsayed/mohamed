import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/modules/Student_Attendance/login/cubit/states.dart';

class AttendanceLoginCubit  extends Cubit<AttendanceLoginStates>
{
  AttendanceLoginCubit():super(AttendanceLoginInitialState());

  static AttendanceLoginCubit get(context) => BlocProvider.of(context);
}