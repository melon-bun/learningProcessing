PImage img;
int rbg1,rbg2,rbg3,rbg4;
float r1;
float r2;
float r3;
float r4;
int temp;
float replaceX;
float replaceY;
float lengthofpic;
float widthofpic;

void setup(){
  size(1000,600);
  img=loadImage("test.jpg");
  image(img,0,0);
    lengthofpic=img.width;
    widthofpic=img.height;
}

void draw(){
for(int no=0;no<2;no++){
  for(int x=0;x<=lengthofpic;x++){
    for (int y=0;y<=widthofpic;y++){
      r1=red(get(x,y));
      r2=red(get(x+1,y));
      r3=red(get(x,y+1));
      r3=red(get(x+1,y+1));
      replaceX=r1-r4;
      replaceY=r2-r3;
      temp=int(abs(replaceX)+abs(replaceY)*2);
      set(x+img.width,y,color(temp,temp,temp));
    }
  }
}
noLoop();
}

