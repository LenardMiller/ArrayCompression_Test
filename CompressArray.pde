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
    count = 0;
    changed = 0;
  }  
  void cMain(){
    if (factor < 0){ //<>//
      for (int i = 0; i < oldSize; i++){
        if (count > ceil(period)){
          compArray.remove(i-changed);
          if (debug){
            println(compArray);
          }
          changed++;
          count = -1;
        }  
        count++;
      }  
    }  
    else if (factor > 0){
      if (debug){
        println("period: " + period);
      }
      for (int i = 0; i <= newSize-1; i++){
        if (count >= ceil(period)){
          if (debug){
            println(compArray.size() +" out of "+ (metaCount+1)*fullSize);
          }  
          if (compArray.size() < (metaCount+1)*fullSize){
            if (i != 0 && i < compArray.size()+1){
              compArray.add(i,compArray.get(i-1));
              if (debug){
                println(compArray.get(i-1) + " at " + i);
              }
            }  
          }
          if (debug){
            println(compArray);
          }
          count = -1;
        }  
        count++;
      }  
    }  
  }  
}  
