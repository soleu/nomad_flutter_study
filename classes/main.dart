// enum
enum Team {red, blue}
// 사용시엔 Team.red

// abstract
abstract class Human {
    void walk();
}
// class a extends Human

// inheritance
class Person {
    final String name;
    Person(this.name);
    void sayHello(){
        print('Hi my name is $name')
    }
}
// 사용시엔 class a extends Person :super()

// mixins -- 생성자가 없는 클래스
class Strong {
    final double strengthLevel = 1500.99;
}
class QuickRunner {
    void runQuick{
        print("ruuuuuuun!")
    }
} // 사용시엔 with, 상속받을 필요가 없음(static 같은건강). 여러 클래스에서 사용가능


class Player with Strong, QuickRunner{
    final String name = 'sol';
    int xp = 1900;
    int a,b; // 이런식으로도 사용 가능

// parameter 에 late 쓰기
    // Player(String name, int xp) {
    //     this.name = name;
    //     this.xp = xp;
    // }

    Player(this.name,this.xp);

    // named constructor
    Player.createPlayer({
        required String name
    }): this.age = 20,
        this.name = name;

    void sayHello(){
        print('hi my name is $name');
    }
}

void main(){
    var player = Player();
    print(player.name); // sol
    player.name = 'lalala';
    print(player.name); // lalala
    player.sayHello();

    // cascade notation
    var player1= Player(name : 'sol',xp:1000)
    ..name = 'las'
    ..xp = 12000 // 특정 값만 바꾸게 할 수 있음
}