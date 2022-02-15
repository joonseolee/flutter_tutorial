# flutter_tutorial

flutter 개발 문서를 참고해서 페이지별로 나눠서 테스트할예정.

## Animation

example for the action of animation.

## Design

### ShareTheme

특정 디자인을 설정해두면 그것을 부모로 쓰고 자식으로 상속해서 쓸것인지 아니면 아예 별도로 쓸것인지 선택할수있다.  
방법은 `ThemeData` 사용 또는 상속받아서 사용하는건데 소스를 참고하면 된다.

## Form

### TextFieldChanges

텍스트 필드의 텍스트값이 변경될때마다 확인하고싶을때 2가지 방법이 있는데 아래와 같다.

1. `onChanged` 콜백 메소드 사용
2. `TextEditingController` 사용

### Focus

화면 로딩과 동시에 `focus` 를 하게할려면 옵션만 설정해주면되고 예를들어 `저장` 버튼을 눌렀을때 특정 `textField` 쪽으로 바로 `focus`를 해주고싶다면 `FocusNode` 를 구현해주자.

```dart
// way 1
TextField
(
autofocus: true
)

// way2
TextField
(
focusNode: myFocusNode)
```

## Navigation

### NavigationWithArguments

`MaterialApp.routes`에 직접 라우팅을 선언해주거나   
`MaterialApp.onGenerateRoute` 에 선언해주거나 선택할수있다.

## Networking

api jaon mapper is difficult to use
