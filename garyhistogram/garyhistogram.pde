PImage img;
int[]colorval = new int[256];
float redval;

void setup(){
  img =loadImage("390.jpg");
  
  size(img.width*2,img.height);
  image(img,0,0);
  print(img.height);
}

void draw(){
  for(int y=0;y<=img.height;y++){
    for (int x=0;x<=img.width;x++){
      redval=red(get(x,y));
      for (int garyval=0;garyval<=255;garyval++){
        if(redval==garyval){
          colorval[garyval]=colorval[garyval]+1;
        }
      }
    }
  }
  for (int i=0;i<=255;i++){
    line(img.width*1.2+i,height,img.width*1.2+i,height-0.05*colorval[i]);
  }
  noLoop();
  
}

