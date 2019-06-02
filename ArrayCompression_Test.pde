int fullSize;
int compSize;
int metaCount;
ArrayList fullArray;
ArrayList compArray;
CompressArray compress;
DisplayArray displayFull;
DisplayArray displayComp;
void settings(){
  size(600,400);  
}  
void setup(){
  //shape stuff
  noStroke();
  //array stuff
  fullSize = 32;
  compSize = 10;
  fullArray = new ArrayList();
  compArray = new ArrayList();
  for (int i = 0; i < fullSize; i++){
    fullArray.add(i);
  }  
  for (int i = 0; i < fullSize; i++){
    compArray.add(i);
  }  
  displayFull = new DisplayArray(fullSize,0,fullArray);
  displayComp = new DisplayArray(compSize,height/2,compArray);
  metaCount = 0;
  while (compArray.size() != compSize){
    metaCount++;
    //println("count: "+ metaCount);
    compress = new CompressArray(compArray.size(),compSize);
    compress.cMain();
  }  
  println(fullArray);
  println(compArray);
} 
void draw(){
  fill(20,25,45); 
  rect(0,0,width,height);
  fill(255);
  displayFull.daMain();
  displayComp.daMain();
}  
