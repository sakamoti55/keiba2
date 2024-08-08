float num;
int keyP;
int m;
int ch =0;
int count = 0;
int kakekinn;
boolean syojikin_plus=false;
boolean kanekakutei;
int race_cnt=1;
boolean race_cnt_b;
boolean ikkaidake;
int tousen=0;

class Window {
    // 1.スタート画面
    void startWindow() {
        ikkaidake=false;
        // スタート画面の処理をここに書く
        font = createFont("HGP創英角ﾎﾟｯﾌﾟ体", 100);
        textFont(font);
        
        //デザイン
        fill(0);
        textAlign(CENTER,CENTER);
        text("けいばげーむ", 600, 240);
        
        fill(255);
        rect(450,570,300,70);  
        
        fill(0);
        font = createFont("HGP創英角ﾎﾟｯﾌﾟ体", 100);
        textSize(60);
        text("スタート",600,600);
        
        if (hanniClicked(450,570,300,70)) {
            num=0;
            scene=1;
        }          
    }

    // 2.オッズ画面
    void oddsWindow() {
        race_cnt_b=false;
        kanekakutei =false;
        syojikin_plus=false;
        results = new ArrayList<Integer>();
        font = createFont("ＭＳ ゴシック", 50);
        textFont(font);
        textAlign(CENTER,CENTER);
        text("馬を選んでください",600,100);
        
        
        boolean rand_bool[] = new boolean[7];
        int rand_num[] = new int[7];
        
        for(int i=0;i<7;i++){
            rand_bool[i]=false;
        }
        
        for(int i=0;i<4;i++){
          while(true){
            int rand_n=(int)random(7);
            if(!rand_bool[rand_n]){
              rand_num[i]=rand_n;
              rand_bool[rand_n]=true;
              break;
            }
          }
        }
        
        if(!ikkaidake){
          // 各レーンにランダムにUmaを割り当て
          for (int i = 0; i < 4; i++) {
              if (rand_num[i] == 0) {
                  umas[i] = new Uma1(i,100 + i * 200, 50, 1);
              }else if(rand_num[i] == 1){
                  umas[i] = new Uma2(i,100 + i * 200, 50, 1);
              }else if (rand_num[i] == 2){
                  umas[i] = new Uma3(i,100 + i * 200, 50, 1);
              }else if (rand_num[i] == 3){
                  umas[i] = new Uma4(i,100 + i * 200, 50, 1);
              }else if (rand_num[i] == 4){
                  umas[i] = new Uma5(i,100 + i * 200, 50, 1);
              }else if (rand_num[i] == 5){
                  umas[i] = new Uma6(i,100 + i * 200, 50, 1);
              }else{
                  umas[i] = new Uma7(i,100 + i * 200, 50, 1);
              }
          }
          ikkaidake=true;
        }
        
        //umas[0] = new Uma1(100 + 0 * 200, 50, 0);
        //umas[1] = new Uma2(100 + 1 * 200, 50, 0);
        //umas[2] = new Uma3(100 + 2 * 200, 50, 0);
        //umas[3] = new Uma4(100 + 3 * 200, 50, 0);
        
        // 賭ける馬を選んでください(とりあえず単勝設定)
        // rect内をクリック
        fill(255);
        rect(140, 200, 200,  350);
        rect(380, 200, 200,  350);
        rect(620, 200, 200,  350);
        rect(860, 200, 200,  350);

        if (hanniClicked(140, 200, 200,  350)) {
            selectedHorce = 0;
            println(0);
        } else if (hanniClicked(380, 200, 200,  350)) {
            selectedHorce = 1;
            println(1);
        } else if (hanniClicked(620, 200, 200,  350)) {
            selectedHorce = 2;
            println(2);
        } else if (hanniClicked(860, 200, 200,  350)) {
            selectedHorce = 3;
            println(3);
        }
        
        //デザイン
        if(selectedHorce==0){
          image(gazou[umas[0].idx+7],240,250);
        }else{
          image(gazou[umas[0].idx],240,250);
        }
        if(selectedHorce==1){
          image(gazou[umas[1].idx+7],480,250);
        }else{
          image(gazou[umas[1].idx],480,250);
        }
        if(selectedHorce==2){
          image(gazou[umas[2].idx+7],720,250);
        }else{
          image(gazou[umas[2].idx],720,250);
        }
        if(selectedHorce==3){
          image(gazou[umas[3].idx+7],960,250);
        }else{
          image(gazou[umas[3].idx],960,250);
        }        
        fill(0);
        textSize(20);
        
        text(umas[0].name,240,320);
        text(umas[1].name,480,320);
        text(umas[2].name,720,320);     
        text(umas[3].name,960,320);     
        
        text("オッズ :" + umas[0].odds,240,370);
        text("オッズ :" + umas[1].odds,480,370);
        text("オッズ :" + umas[2].odds,720,370);
        text("オッズ :" + umas[3].odds,960,370);
        
        text("タイプ :" + umas[0].type,240,410);
        text("タイプ :" + umas[1].type,480,410);
        text("タイプ :" + umas[2].type,720,410);
        text("タイプ :" + umas[3].type,960,410);
        
        text("初速 :  " + umas[0].initialS,240,450);
        text("初速 :  " + umas[1].initialS,480,450);
        text("初速 :  " + umas[2].initialS,720,450);
        text("初速 :  " + umas[3].initialS,960,450);
        
        text("最高速: " + umas[0].highS,240,490);
        text("最高速: " + umas[1].highS,480,490);
        text("最高速: " + umas[2].highS,720,490);
        text("最高速: " + umas[3].highS,960,490);
        
        text("最低速: " + umas[0].lowS,240,530);
        text("最低速: " + umas[1].lowS,480,530);
        text("最低速: " + umas[2].lowS,720,530);
        text("最低速: " + umas[3].lowS,960,530);
        
        
        
        
        
        fill(255);        

        if(keyPressed)
        {
          if((key!=keyP) || (millis()-m>=200))
          {
            if(key=='.')
            {
              ch = 1;
            }
            if(key==BACKSPACE)
            {
              if(ch==1)
              {
                count = count-1;
                if(count<=0)          
                {
                  num = floor(num*pow(10,count))/(pow(10,count));
                  ch = 0;
                }
                else
                {
                  num = floor(num*pow(10,count))/(pow(10,count));
                }
              }
              else
              {
                num = floor(num/10);
              }
            }
            if(key>=48 && key<=57)
            {
              num = num*pow(10,count+1)+(key-48);
              if(ch==1)
              {
                count = count+1;
                num = num/pow(10,count);
              }
            }
            keyP = key;
            m = millis();
          }
          println(int(num));
        }    
        textSize(32);  
        fill(0);   
        text("賭け金を入力してね! :" + int(num) + "円",600,600);
        if(int(num)<=syojikin){
          text("残金 :" + int(syojikin-int(num)) + "円",600,700);
          fill(255);
          rect(980,700,200,50);
          fill(0);
        text("第" + race_cnt + "レースへ",1080,725);
        if(hanniClicked(980,700,200,50)){
          ikkaidake=false;
          {
            if(!kanekakutei){
              ch = 2;
              kakekinn = int(num);
              syojikin = syojikin-kakekinn;
              scene = 2;
              frameCnt=0;
              kanekakutei=true;
            }
          }
       }   
        }else{
          text("所持金を超えています!!",600,700);
        } 
    }

    // 3.第nレース
    void raceWindow() {
        font = createFont("ＭＳ ゴシック", 50);
        textFont(font);
        for (BaseUma uma : umas) {
            uma.move();
            uma.display();
            uma.changeSpeed();
        }
        fill(255,0,0);
        stroke(255,0,0);
        rect(1100,0,10,800);
        stroke(0);
        fill(0);
        if (results.size() == umas.length) { // すべての馬がゴールしたら
           if(race_cnt==5){
             scene=4;
           }else{
             scene=3;
           }
        }
    }

    // 4.結果画面
    void resultWindow() {
        font = createFont("ＭＳ ゴシック", 50);
        textFont(font);
        textSize(32);
        fill(0);
        for (int i = 0; i < results.size(); i++) {
            int buf=i+1;
            textAlign(LEFT, CENTER);
            text(buf + "位　　:" + umas[results.get(i)].name, 360, 100 + i * 50);
            textAlign(CENTER, CENTER);
        }
        
        text("あなたが選んだ馬は" + umas[selectedHorce].name + "でした",600,400);
        if(!syojikin_plus){
          if(umas[results.get(0)].rane==selectedHorce){
            tousen=1;
            syojikin = syojikin+kakekinn*umas[results.get(0)].odds;
            syojikin_plus=true;
          }
        }
        text("当選額は、" + int(kakekinn*umas[results.get(0)].odds*tousen) + "円",600,500);
        text("所持金は、" + int(syojikin) + "円になりました",600,600);
        fill(255);
        rect(500,700,200,50);
        fill(0);
        textSize(30);
        if(int(syojikin)==0){
          scene=4;
        }else{
        text("次のレースへ",600,725);
        if (hanniClicked(500,700,200,50)) {
             tousen=0;
             num=0;
             scene=1;
           if(!race_cnt_b){
             race_cnt++;
             race_cnt_b=true;
           }
        }
        }
    }
    
    //最終結果画面
    void f_resultWindow(){
        font = createFont("ＭＳ ゴシック", 50);
        textFont(font);
        textSize(32);
        fill(0);
        for (int i = 0; i < results.size(); i++) {
            int buf = i+1;
            textAlign(LEFT, CENTER);
            text(buf + "位　　:" + umas[results.get(i)].name, 360, 100 + i * 50);
            textAlign(CENTER, CENTER);
        }
        
        text("あなたが選んだ馬は" + umas[selectedHorce].name + "でした",600,400);
        if(!syojikin_plus){
          if(results.get(0)==selectedHorce){
            syojikin = syojikin+kakekinn*umas[results.get(0)].odds;
            syojikin_plus=true;
          }
        }
        text("当選額は、" + int(kakekinn*umas[results.get(0)].odds) + "円",600,500);
        text("所持金は、" + int(syojikin) + "円になりました",600,600);
        fill(255);
        rect(500,700,200,50);
        fill(0);
        text("はじめから",600,725);
        
        if(hanniClicked(500,700,200,50)){
           syojikin=10000;
           race_cnt=1;
           scene=0;
        }
    }
}
