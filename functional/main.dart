String sayHello({
    String name = 'default value', // null safety 
    required int age // null 이 들어 올 경우, 컴파일 에러 발생 (required modifier)
    }){
    return "Hello $name nice to meet you!"
}

String sayHello2(
    String name,
    int age, 
    [String? country = 'default value']) =>{
    return 'Hello $name, you are $ age years old from $country';
}

String capitalizeName(String? name) =>  name?.toUpperCase() ?? 'ANON';
// {
    // if(name != null){
    //     return name.toUpperCase();
    // }
    // return 'ANON';
    // }
typedef ListOfInts = List<int>; // 타입을 미리 정의함 (alias)

//List<int>
ListOfInts reverseListOfNumbers(List<int> list) {
    var reversed = list.reversed;
    return reversed.toList();
}

void main(){
    print(sayHello(
        // named parameters
        name : 'sol',
        age :  19));

        // optional positional parameters
        sayHello2(
            'sol',12 // country 를 옵셔널 처리
        )

        // QQ operator ?? / ??=
        capitalizeName('sol')

        String? name;
        name ??= 'nico'; // 만약 null이라면 값 넣어주기



}

