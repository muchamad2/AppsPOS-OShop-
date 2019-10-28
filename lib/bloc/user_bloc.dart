import 'package:bloc/bloc.dart';
import 'package:ol_shop/model/User.dart';

class UserBloc extends Bloc<int, User> {
  @override
  User get initialState => UninitializeUser();

  @override
  Stream<User> mapEventToState(int event) async* {
    try{
      User user = await User.getUserFromAPI(event);
      yield user;
    }catch(_){}
  }
  
}