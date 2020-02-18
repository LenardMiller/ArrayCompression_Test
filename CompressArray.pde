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
    if (factor > 0){
       int perNewCel = (int)((float)newSize / (float)oldSize);
       println(newSize +" / "+ oldSize +" = "+ perNewCel);
       int celCount = 0;
       compArray = new ArrayList<Integer>();
       for (int i = 0; i < newSize; i++) {
          compArray.add(celCount);
          //println(i - celCount*perNewCel +", "+ perNewCel);
          if (i - celCount*perNewCel >= perNewCel) {
             celCount++;
          }
       }  
       int x = 0;
       for (int i = 0; i < compArray.size(); i++) {
         if (x == compArray.get(i)) {
           x++;
           println(x + ", " + str((x*perNewCel)));
         }  
       }  
    }  
  }
}  
