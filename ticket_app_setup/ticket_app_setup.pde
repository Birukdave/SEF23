Button confirm;
Buttontype print;
void setup () {
  size (1000, 500);
  confirm = new Button ("Confirm", 500, 376); 
  print =new Buttontype ("Print", 726, 376);
}
void draw () {
  background (255);

  confirm.draw ();
  print.draw ();
}
void mouseReleased () {
  if (confirm.hovered()) {
    println ("Confirm Pressed");
  } else if (print.hovered ()) {
    println ("Print Pressed");
  }
}
