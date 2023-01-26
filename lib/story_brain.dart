import 'story.dart';
class StoryBrain {
  int _storyNumber = 0;
  List<Story> _storyData = [
    Story(
        storyTitle:
        '0. Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyTitle: '1. He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
        '2. As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle:
        '3. What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
        '4. As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
        '5. You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];
  getStory(){
    return _storyData[_storyNumber].storyTitle;
  }
  getChoice1(){
    return _storyData[_storyNumber].choice1;
  }
  getChoice2(){
    return _storyData[_storyNumber].choice2;
  }
  restart(){
    _storyNumber = 0;
  }
  buttonShouldBeVisible(){
    if(_storyNumber==0||_storyNumber==1||_storyNumber==2){
        return true;
    }else {
      return false;
    }
  }
  void nextStory(int choiceNumber){
    //if story 0
    if(_storyNumber==0&&choiceNumber==1){
      _storyNumber=2;
      print('story number = $_storyNumber choiceNumber=$choiceNumber');
    }
    else if(_storyNumber==0&&choiceNumber==2){
      _storyNumber=1;
      print('story number = $_storyNumber choiceNumber=$choiceNumber');
    }
    //if story 1
    else if(_storyNumber==1&&choiceNumber==1){
      _storyNumber=2;
      print('story number = $_storyNumber choiceNumber=$choiceNumber');
    }
    else if(_storyNumber==1&&choiceNumber==2){
      _storyNumber=3;
      print('story number = $_storyNumber choiceNumber=$choiceNumber');
    }
    //if story 2
    else if(_storyNumber==2&&choiceNumber==1){
      _storyNumber=5;
      print('story number = $_storyNumber choiceNumber=$choiceNumber');
    }
    else if(_storyNumber==2&&choiceNumber==2){

      _storyNumber=4;
      print('story number = $_storyNumber choiceNumber=$choiceNumber');
    }
    //if story 3,4,5
    else if((_storyNumber==3||_storyNumber==4||_storyNumber==5)&&choiceNumber==1){
      restart();
      print('story number = $_storyNumber choiceNumber=$choiceNumber');
    }
  }
}


