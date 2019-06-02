class CompressArray{
  int oldSize;
  int newSize;
  int factor;
  float period;
  int count;
  int changed;
  CompressArray(int oldSize, int newSize){
    this.oldSize = oldSize;
    this.newSize = newSize;
    factor = newSize-oldSize;
    period = (newSize/abs(float(factor)))-1;
    //println(period);
    count = 0;
    changed = 0;
  }  
  void cMain(){
    if (factor < 0){ //<>//
      for (int i = 0; i < oldSize; i++){
        if (count > ceil(period)){
          compArray.remove(i-changed);
          //println(compArray);
          changed++;
          count = -1;
        }  
        count++;
      }  
    }  
    else if (factor > 0){
      //println("period: " + period);
      for (int i = 0; i <= newSize-1; i++){
        if (count >= round(period)){
          //println(compArray.size() +" "+ (metaCount+1)*fullSize);
          if (compArray.size() < (metaCount+1)*fullSize){
            //println(i);
            compArray.add(i,compArray.get(i-1));
          }
          //println(compArray);
          count = -1;
        }  
        count++;
      }  
    }  
  }  
}  
