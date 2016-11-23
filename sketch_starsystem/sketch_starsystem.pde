int i;
int amount=5000;
int s = 1;
float [] col;
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
  col = new float[amount];
  for (i=0; i<amount; i++) {
    col[i] = random(100,200);
  }
}

void draw() {
  background(0);
  translate(mouseX,mouseY);
  for (i=0; i<amount; i++) {
    pushMatrix();
    fill(col[i], col[i], col[i]);
    stroke(col[i], col[i], col[i]);
    rotate(rot[i]);
    point(dis[i]/2,dis2[i]/2);
    rot[i] = rot[i] + spd[i];
    if (keyCode == DOWN) {
      if (dis[i]>0) {
        dis[i] = dis[i]*(100-n)/100;
      }
      if (dis[i]<0) {
        dis[i] = dis[i]*(100-n)/100;
      }
      if (dis2[i]>0) {
        dis2[i] = dis2[i]*(100-n)/100;
      }
      if (dis2[i]<0) {
        dis2[i] = dis2[i]*(100-n)/100;
      }
      }else if (keyCode == UP) {
      if (dis[i]>0) {
        dis[i] = dis[i]*(100+n)/100;
      }
      if (dis[i]<0) {
        dis[i] = dis[i]*(100+n)/100;
      }
      if (dis2[i]>0) {
        dis2[i] = dis2[i]*(100+n)/100;
      }
      if (dis2[i]<0) {
        dis2[i] = dis2[i]*(100+n)/100;
      }
      }else{
      }
      popMatrix();
      rot[i] = rot[i] + spd[i];
    }  
}