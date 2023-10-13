import 'package:bloc/bloc.dart';
import 'package:state_bloc/eventpage.dart';
import 'package:state_bloc/statepage.dart';

class Counterblocs extends Bloc<Counterevent,Counterstate>{
  Counterblocs():super(initialstate()){
    on<increament>((event,emit){
      emit(Counterstate(Counter: state.Counter+1));
    }
    );
    on<decreament>((event,emit){
      emit(Counterstate(Counter: state.Counter-1));
    }
    );

  }
}