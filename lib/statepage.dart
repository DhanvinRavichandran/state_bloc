class Counterstate{
  int Counter;
  Counterstate({required this.Counter});
}
class initialstate extends Counterstate{
  initialstate():super(Counter: 0);
}