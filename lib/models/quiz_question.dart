class QuizQuestion{
  const QuizQuestion(this.text,this.answers);
  final String text;
  final List<String>answers;
  List<String>getShuffledAnswers(){
    //chain
    // mix new  list not origin list
    // Take copy of list
   final shuffledList= List.of(answers);
   // shuffled new list
   shuffledList.shuffle();
   // return shuffled list
   return shuffledList;
  }

}