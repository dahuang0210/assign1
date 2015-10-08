/* 
  Assignment 1
  Author:          Bao Yuchen
  Student Number:  103254021
  Update:          2015/10/07
*/
  
  PImage bg1Img, bg2Img, fighterImg, enemyImg, treasureImg, hpImg;
  int speed;
  int rdepv, rdhpwv, rdtrx, rdtry; //random enemy position value; random hp width value
  int fightery = 240; //fighter Position and Fighter height
  int bg1x= 0, bg2x = 640, bgSpeed = 2; // location of each bgimgs

void setup () {
  size(640,480) ;  
  fighterImg = loadImage("img/fighter.png");
  enemyImg = loadImage("img/enemy.png");
  bg1Img = loadImage("img/bg1.png");
  bg2Img = loadImage("img/bg2.png");
  treasureImg = loadImage("img/treasure.png");
  hpImg = loadImage("img/hp.png");  
  rdhpwv =floor(random(1,195));  //the width of the transparent hp frame is 195
  rdtrx = floor(random(640));
  rdtry = floor(random(480));
  rdepv = floor(random(30,450));
  //set the enemy not to appear on the line of fighter
  rdepv += fightery;
  rdepv %= 420;
  rdepv += 30;
}

void draw() {
  image(bg1Img,bg1x, 0);
  image(bg2Img,bg2x,0);
  image(treasureImg, rdtrx, rdtry);
  image(fighterImg, 500, fightery);
  image(enemyImg, speed, rdepv);
  speed +=4;
  speed %= 640;
  
  stroke(#ff0000);
  fill(#ff0000);
  rect(33, 25, rdhpwv,15);  //the height of the transparent hp frame is 15
  image(hpImg, 20, 20);
  
  bg1x +=640+bgSpeed;
  bg1x %= 1280;
  bg1x -= 640;
  
  bg2x +=640+bgSpeed;
  bg2x %= 1280;
  bg2x -= 640;
}
