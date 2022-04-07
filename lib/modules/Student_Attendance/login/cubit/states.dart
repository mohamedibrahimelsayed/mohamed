abstract class AttendanceLoginStates{}

class AttendanceLoginInitialState extends AttendanceLoginStates{}

class AttendanceLoginLoadingState extends AttendanceLoginStates{}

class AttendanceLoginSuccessState extends AttendanceLoginStates{}

class AttendanceLoginErrorState extends AttendanceLoginStates
{
  final String error;
  AttendanceLoginErrorState(this.error);

}