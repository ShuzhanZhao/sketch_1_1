///////////////////////////////////// 1. Define the Walker class 
class Walker{                        
int x;
int y;
///////////////////////////////////// 2. Constructor: as the setup of THE abject 
Walker(){                            
  x = width/2;
  y = height/2;
}
///////////////////////////////////// 3. Classes defined with functionality 
///////////////////////////////////// Two functions here: 1) display the object itself 
void display(){
  stroke(#FF99EE);
  point(x,y);
}
/////////////////////////////////////////////////////////  2) take a step 
void step(){
  int choice = int(random(4));
  
  if(choice == 0){
    x++;
  }
  else if(choice == 1){
    x--;
  }
  else if(choice == 2){
    y++;
  }
  else{
    y--;
  }
}
}

///////////////////////////////// Class is completed. Main part begins 
///////////////////////////////// Declare one global variable of TYPE Walker 
Walker w;
///////////////////////////////// Create the boject in setup by calling the CONSTRUCTOR 
////////////////////////////////  with the new OPERATOR 
void setup(){
  size(640, 360);
  background(255);
  w = new Walker(); 
}

void draw(){
  w.step();
  w.display();
}