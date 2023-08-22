class Question {
  String text;
  bool answer;

  // このコンストラクタは、以下のコンストラクタの記述と同じ意味のシンタックスシュガー
  // {}をつけた場合は、キーワード引数での指定を矯正し、{}なしの場合は位置引数とする
  Question({this.text, this.answer});

  // Question({String text, bool answer}) {
  //   this.text = text;
  //   this.answer = answer;
  // }

}
