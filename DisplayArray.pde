class DisplayArray{
  int y;
  float size;
  String displayText;
  ArrayList<Integer> array;
  DisplayArray(int size, int y, ArrayList array){
    this.size = size;
    this.y = y;
    this.array = array;
    displayText = "";
  }
  void daMain(){
    for (int i = int(size-1); i >= 0; i--){
      int set = array.get(i);
      fill(set*(255/float(fullSize)));
      rect(i*width/size, y, width/size+1, height/2); 
    }  
  }  
}  
