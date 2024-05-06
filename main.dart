void main(){
    // variable
    print('hello world');
    var name = 'sol'; // 타입 추론 (권장 방식)
    String name2 = 'sol'; // 명시적으로 타입
    final name3 = 'sol'; // 최종 (변경 불가)

    // dynamic type
    var age; // dynamic - 값을 넣을 때  타입이 결정됨
    if(age is String){
        // 여기서는 age가 String 타입임을 확정
        // String 관련 함수 사용가능
    }

    // null safety
    String? sol = 'sol'; // nullable
    sol = null;
    sol.isNotEmpty; // not nullable을 명시 (뒤부터는 물음표 안붙여도 됨)

    // late (초기 데이터 없이 변수 선언)
    late final String date;
    date = '230101'; // 값을 알지 못할 때, 한번만 값을 설정하고 싶을 때 사용    

    // constant (!= javascript const)
    const API = '1212'; // compile- time에 알고 있는 값이여야 함
    // const API = fetchApi(); // 불가, 사용자 입력값도 불가(앱스토어에 올리기 전부터 알고있는 값이라고 생각하기)


    num // int or double 
    // list
    var giveMeFive true;
    var numbers = [1,2,3,4];
    List<Int> nums = [1,2,3,4
    , if(giveMeFive) 5 // true 라면 5도 add
    ];

    // String
    var greeting = 'Hello $name, ${age+2}'; // 문자열에 변수 넣는 법

    // collection for
    var oldFriends = ['sol', 'pine'];
    var newFriends = ['lee', 'jane',
    // 이런 방식으로 추가할 수 있음
    for (var friend in oldFriends) " 🍀 $friend",
    ];
    print (newFriends);


    // maps
    var player = {
        'name' : 'sol',
        'xp' : 19.00,
        'superpower' : false,
        };

    // sets
    Set<int> numbers2 = {1,2,3,4}; // list : []
    numbers2.add(1);

}