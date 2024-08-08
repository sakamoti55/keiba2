void setup() {
    size(1200, 800);
    background(255);
    frameRate(480);
    imageMode(CENTER); // 画像の中心を基準にする
    scene = 0;
    w = new Window(); // Windowクラスのインスタンスを作成
    m=millis();


    syojikin = 10000;
    
    
    gazou[0] = loadImage("black.png");
    gazou[0].resize(gazou[0].width/5,gazou[0].height/5);
    gazou[1] = loadImage("orange.png");
    gazou[1].resize(gazou[1].width/5,gazou[1].height/5);
    gazou[2] = loadImage("green.png");
    gazou[2].resize(gazou[2].width/5,gazou[2].height/5);
    gazou[3] = loadImage("blue.png");
    gazou[3].resize(gazou[3].width/5,gazou[3].height/5);
    gazou[4] = loadImage("koiblue.png"); 
    gazou[4].resize(gazou[4].width/5,gazou[4].height/5);
    gazou[5] = loadImage("white.png");
    gazou[5].resize(gazou[5].width/5,gazou[5].height/5);
    gazou[6] = loadImage("purple.png");
    gazou[6].resize(gazou[6].width/5,gazou[6].height/5);   
    
    gazou[7] = loadImage("black_r.png");
    gazou[7].resize(gazou[7].width/5,gazou[7].height/5);
    gazou[8] = loadImage("orange_r.png");
    gazou[8].resize(gazou[8].width/5,gazou[8].height/5);
    gazou[9] = loadImage("green_r.png");
    gazou[9].resize(gazou[9].width/5,gazou[9].height/5);
    gazou[10] = loadImage("blue_r.png");
    gazou[10].resize(gazou[10].width/5,gazou[10].height/5);
    gazou[11] = loadImage("koiblue_r.png"); 
    gazou[11].resize(gazou[11].width/5,gazou[11].height/5);
    gazou[12] = loadImage("white_r.png");
    gazou[12].resize(gazou[12].width/5,gazou[12].height/5);
    gazou[13] = loadImage("purple_r.png");
    gazou[13].resize(gazou[13].width/5,gazou[13].height/5);  
    
}

void draw() {
     //println(frameCnt);
    background(255);
    if (scene == 0) {
        w.startWindow();
    }
    if (scene == 1) {
        w.oddsWindow();
    }
    if (scene == 2) {
        w.raceWindow();
    }
    if (scene == 3) {
        w.resultWindow();
    }
    if (scene == 4) {
        w.f_resultWindow();
    }    
    
    println(ikkaidake);
    frameCnt++;
}
