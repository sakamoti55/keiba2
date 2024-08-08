abstract class BaseUma {
    private int rane;
    float y, x, r;
    int idx;
    int id;
    float initialS;
    float minAccel;
    float maxAccel;
    float speed;
    float odds;
    String type;
    float highS;
    float lowS;
    String name;
    boolean finished = false; // 新しいフラグを追加

    BaseUma(int rane,float y, float x, float r) {
        this.y = y;
        this.x = x;
        this.r = r;
        this.rane=rane;
    }

    abstract void display();

    void move() {
        if (x + speed >= 1100 && !finished) {
            finished = true;
            results.add(rane); // ここでidを保存
        } else {
            x += speed;
        }
    }

    void changeSpeed() {
        if (frameCnt > 120) {
            if (frameCnt % 120 == 119) {
                speed = initialS+ random(minAccel, maxAccel);
            }
        } else {
            speed = initialS;
        }
    }
}

class Uma1 extends BaseUma {
    Uma1(int rane,float y, float x, float r) {
        super(rane,y, x, r);
        idx=0;
        id = 1;
        initialS = 1.3;
        minAccel = -0.9;
        maxAccel = -0.3;
        odds = 3;
        type="逃げ";
        highS = initialS+maxAccel;
        highS = float(floor(highS*pow(10,1)))/pow(10,1);
        lowS = initialS+minAccel;
        lowS = float(floor(lowS*pow(10,1)))/pow(10,1);
        name = "ブラックスター";
        
    }
    
    void display() {
        image(gazou[0], x, y);
    }
}

class Uma2 extends BaseUma {
    Uma2(int rane,float y, float x, float r) {
        super(rane,y, x, r);
        idx=1;
        id = 2;
        initialS = 1.0;
        minAccel = -0.6;
        maxAccel = 0.3;
        odds = 2;
        type="先行";
        highS = initialS+maxAccel;
        lowS = initialS+minAccel;
        lowS = float(floor(lowS*pow(10,1)))/pow(10,1);
        name="オレンジーニョ";
    }
    
    void display() {
        image(gazou[1], x, y);
    }
}

class Uma3 extends BaseUma {
    Uma3(int rane,float y, float x, float r) {
        super(rane,y, x, r);
        idx=2;
        id = 3;
        initialS = 0.2;
        minAccel = 0.5;
        maxAccel = 1.1;
        odds = 3.5;
        type="差し";
        highS = initialS+maxAccel;
        highS = float(floor(highS*pow(10,1)))/pow(10,1);
        lowS = initialS+minAccel;
        lowS = float(floor(lowS*pow(10,1)))/pow(10,1);
        name="グリーンモンスター";
    }
    
    void display() {
        ellipse(x, y, r, r);
        image(gazou[2], x, y);
    }
}

class Uma4 extends BaseUma {
    Uma4(int rane,float y, float x, float r) {
        super(rane,y, x, r);
        idx=3;
        id = 4;
        initialS = 1.3;
        minAccel = -0.6;
        maxAccel = -0.3;
        odds = 1.2;
        type="逃げ";
        highS = initialS+maxAccel;
        highS = float(floor(highS*pow(10,1)))/pow(10,1);
        lowS = initialS+minAccel;
        lowS = float(floor(lowS*pow(10,1)))/pow(10,1);
        name="ブルーオケロック";
    }
    
    void display() {
        ellipse(x, y, r, r);
        image(gazou[3], x, y);
    }
}

class Uma5 extends BaseUma {
    Uma5(int rane,float y, float x, float r) {
        super(rane,y, x, r);
        idx=4;
        id = 5;
        initialS = 1.0;
        minAccel = -0.6;
        maxAccel = 0.2;
        odds = 2.5;
        type="先行";
        highS = initialS+maxAccel;
        lowS = initialS+minAccel;
        lowS = float(floor(lowS*pow(10,1)))/pow(10,1);
        name="ブルーベリーアイ";
    }
    
    void display() {
        ellipse(x, y, r, r);
        image(gazou[4], x, y);
    }
}

class Uma6 extends BaseUma {
    Uma6(int rane,float y, float x, float r) {
        super(rane,y, x, r);
        idx=5;
        id = 6;
        initialS = 0.4;
        minAccel = 0.2;
        maxAccel = 1.1;
        odds = 2.8;
        type="追い込み";
        highS = initialS+maxAccel;
        highS = float(floor(highS*pow(10,1)))/pow(10,1);
        lowS = initialS+minAccel;
        lowS = float(floor(lowS*pow(10,1)))/pow(10,1);
        name="ホワイトプリズン";
    }
    
    void display() {
        ellipse(x, y, r, r);
        image(gazou[5], x, y);
    }
}

class Uma7 extends BaseUma {
    Uma7(int rane,float y, float x, float r) {
        super(rane,y, x, r);
        idx=6;
        id = 7;
        initialS = 0.4;
        minAccel = 0.4;
        maxAccel = 0.6;
        odds = 4.5;
        type="追い込み";
        highS = initialS+maxAccel;
        highS = float(floor(highS*pow(10,1)))/pow(10,1);
        lowS = initialS+minAccel;
        lowS = float(floor(lowS*pow(10,1)))/pow(10,1);
        name="パープルメンソーレ";
    }
    
    void display() {
        ellipse(x, y, r, r);
        image(gazou[6], x, y);
    }
}
