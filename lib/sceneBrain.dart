import 'question.dart';

class Scene {
  int _numberquestion = 0;

  List<Question> _questionListe = [
    Question(
        'Vous venez de crevez un pneu à St André. Vous n avez pas de téléphone vous décidez de faire du stop. Une ford fiesta rouge s arrête et le conducteur vous demande si vous voulez qu il vous dépanne.',
        'Vous lui remerciez et vous montez dans la voiture',
        'Vous lui demandez s il n est pas un meurtrier avant !'),
    Question(
        'Il acquiesce de la tête sans faire attention à la question',
        'Au moins il est honnête. Vous montez ! ',
        'Au moins il est honnête. Vous montez ! '),
    Question(
        'Lorsqu il commence à conduire, il vous demande d ouvrir la boite à gant. À l’intérieur, vous trouverez un couteau ensanglanté, deux doigts coupés et un CD de T-Matt.',
        'J adore T-Matt, je lui donne le CD.',
        'C est lui ou moi, je prends le couteau et je le poignarde'),
    Question('Woaw ! Quelle évasion !', 'Recommencer', ''),
    Question(
        'En traversant la route du littoral, vous réfléchissez à la sagesse douteuse de poignarder quelqu’un pendant qu’il conduit une voiture dans laquelle vous êtes',
        'Recommencer',
        ''),
    Question(
        'Vous vous faites un bon dalon et vous chantez le dernier son de T-matt ensemble. Il vous dépose à Cambaie et il vous demande si vous connaissez un bon endroit pour jeter un corps',
        'Recommencer',
        ''),
  ];

  String getQuestionAnswer() {
    return _questionListe[_numberquestion].suggestion;
  }

  String getQuestionAnswer2() {
    return _questionListe[_numberquestion].suggestion2;
  }

  String getQuestionText() {
    return _questionListe[_numberquestion].questionText;
  }

  void nextQuestion() {
    if (_numberquestion < _questionListe.length - 1) _numberquestion++;
  }
}
