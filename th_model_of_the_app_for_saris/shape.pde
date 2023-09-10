class shaper {
  int x, y;
  int s=29;
  PShape shap;
  String mode;
      String minus1= "C:/Users/Lenovo/Desktop/project/pl and mi signs/minus_filled.svg";
    String minus2= "C:/Users/Lenovo/Desktop/project/pl and mi signs/minus_outlined.svg";
    String plus1= "C:/Users/Lenovo/Desktop/project/pl and mi signs/add_filled.svg";
    String plus2= "C:/Users/Lenovo/Desktop/project/pl and mi signs/add_outlined.svg";
  shaper(String mode,int x, int y) {
    this.x=x;
    this.y=y;
    this.mode=mode; 
  }
  void draw(){
      if(mode.equals("minus2")&&!hovered()){
    shap=loadShape(minus2);
    }if(mode.equals("plus2")&&!hovered()){
    shap=loadShape(plus2);
    }
    if(mode.equals("plus2")&&hovered()){
    shap=loadShape(plus1);
    }if(mode.equals("minus2")&&hovered()){
    shap=loadShape(minus1);
    }
    shap.disableStyle();
    fill(255);
    noStroke();
  shape(shap,x,y,s,s);
  }
   boolean hovered() {
    return mouseX>=x && mouseY>=y && mouseX<=x+s && mouseY<=y+s;
  }
}
