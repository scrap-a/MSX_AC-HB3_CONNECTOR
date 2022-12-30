
$fn=360;

h1=25;      //モデルの高さ（除くh5）
h2=15;      //バナナプラグ（メス）の長さ
h3=10.2;    //挿入部モデルの高さ
h4=h1-h3;   //h1-h2
h5=1.0;     //とっかかり部の高さ

t1=0.02;       //バナナプラグ（メス）の入る穴のマージン
d1=2.62+t1;    //穴の入り口は0.01mm広く設計
d2=2.60+t1;    //穴の直径（測定した穴の直径）＋マージン
d3=2.00;       //ケーブル用の小穴直径

t2=0.5;		//プラグサイズx方向の余裕
x0=0.0;
x1=3.0;
x2=6.8;
x3=9.8;

x4=x1;           //穴１のx座標
x5=x2;           //穴2のx座標
x6=(x0+x3)/2;    //穴3のx座標
x7=11.3;      //外の四角の幅

t3=0.5;		//プラグサイズy方向の余裕
y0=0.0;
y1=6.0;
y2=8.4;

y4=3.0;         //穴１のy座標
y5=y4;           //穴2のy座標
y6=5.65;         //穴3のy座標
y7=10.2;        //外の四角の高さ

difference(){
    
    union(){
        //挿入部モデル
        translate([-(x0+x3)/2+t2,-(y0+y2)/2+t3,0])
        resize([x3-2*t2,y2-2*t3,h3])
        linear_extrude(h3){
            polygon([[x0,y0],[x3,y0],[x3,y1],[x2,y2],[x1,y2],[x0,y1]]);
        }

        //取っ手部モデル
        translate([0,0,h3])
        linear_extrude(h4,scale=[1.0,0.8]){
            square([x3-2*t2, y2-2*t3],true);
        }
        
        translate([0,0,h1])
        cube([x3, y2,h5],true);

        translate([0,0,16])
        cube([x3-10*t2, y2-t3,h5],true);
        
        translate([0,0,18])
        cube([x3-10*t2, y2-t3,h5],true);

        translate([0,0,20])
        cube([x3-10*t2, y2-t3,h5],true);
        
        translate([0,0,22])
        cube([x3-10*t2, y2-t3,h5],true);

    }
    
    translate([-(x0+x3)/2,-(y0+y2)/2,0])
    union(){
        translate([x4,y4,0])
        cylinder(h=h2,d1=d1,d2=d2);
        
        translate([x5,y5,0])
        cylinder(h=h2,d1=d1,d2=d2);
        
        translate([x6,y6,0])
        cylinder(h=h2,d1=d1,d2=d2);
    }    
    //ケーブル用の小穴
    translate([-(x0+x3)/2,-(y0+y2)/2,h3])
    union(){
        translate([x4,y4,0])
        cylinder(h=h4+h5,d1=d3);
        
        translate([x5,y5,0])
        cylinder(h=h4+h5,d1=d3);
        
        translate([x6,y6,0])
        cylinder(h=h4+h5,d1=d3);
    }

}
