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
        'Attends, mais je sais comment changer un pneu voyons !'),
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

  void QuestionSuivante(NumeroChoix) {
    if (NumeroChoix == 1 && _numberquestion == 0) {
      _numberquestion = 2;
    } else if (NumeroChoix == 2 && _numberquestion == 0) {
      _numberquestion = 1;
    } else if (_numberquestion == 1 && NumeroChoix == 1) {
      _numberquestion = 2;
    } else if (_numberquestion == 1 && NumeroChoix == 2) {
      _numberquestion = 3;
    } else if (_numberquestion == 2 && NumeroChoix == 1) {
      _numberquestion = 5;
    } else if (_numberquestion == 2 && NumeroChoix == 2) {
      _numberquestion = 4;
    } else if ((_numberquestion == 3 ||
            _numberquestion == 4 ||
            _numberquestion == 5) &&
        NumeroChoix == 1) {
      _numberquestion = 0;
    }
  }

  String getLaQuestion() {
    return _questionListe[_numberquestion].questionText;
  }

  String getLeChoix1() {
    return _questionListe[_numberquestion].suggestion;
  }

  String getLeChoix2() {
    return _questionListe[_numberquestion].suggestion2;
  }
}
