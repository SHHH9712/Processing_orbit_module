int i;
int amount=5000;
int s = 1;
float [] dis;
float [] dis2;
float [] rot;
float [] spd;
float n = 2;

void setup() {
  size(600,600);
  dis = new float[amount];
  for (i=0; i<amount; i++) {
    dis[i] = random(-300,300);
  }
  dis2 = new float[amount];
  for (i=0; i<amount; i++) {
    dis2[i] = random(-300,300);
  }
  rot = new float[amount];
  for (i=0; i<amount; i++) {
    rot[i] = 0;
  }
  spd = new float[amount];
  for (i=0; i<amount; i++) {
    spd[i] = random(0.005,0.06);
  }
}

void draw() {
  background(0);
  translate(mouseX,mouseY);
  for (i=0; i<amount; i++) {
    pushMatrix();
    fill(#AAAAAA);
    stroke(#AAAAAA);
    rotate(rot[i]);
    point(dis[i]/2,dis2[i]/2);
    rot[i] = rot[i] + spd[i];
    if (keyCode == DOWN) {
      if (dis[i]>0) {
        dis[i] = dis[i] - n;
      }
      if (dis[i]<0) {
        dis[i] = dis[i] + n;
      }
      if (dis2[i]>0) {
        dis2[i] = dis2[i] - n;
      }
      if (dis2[i]<0) {
        dis2[i] = dis2[i] + n;
      }
      }else if (keyCode == UP) {
      if (dis[i]>0) {
        dis[i] = dis[i] + n;
      }
      if (dis[i]<0) {
        dis[i] = dis[i] - n;
      }
      if (dis2[i]>0) {
        dis2[i] = dis2[i] + n;
      }
      if (dis2[i]<0) {
        dis2[i] = dis2[i] - n;
      }
      }else{
      }
      popMatrix();
      rot[i] = rot[i] + spd[i];
    }  
}