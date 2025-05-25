import 'package:flutter/material.dart';

class WorksCitedPage extends StatefulWidget {
  const WorksCitedPage({super.key});

  @override
  State<WorksCitedPage> createState() => _WorksCitedPageState();
}

class _WorksCitedPageState extends State<WorksCitedPage> {
  static const List<String> citations = [
    'Black, Lindsey I., M.P.H., et al. "Organized Sports Participation Among Children Aged 6–17 Years: United States, 2020." National Center for Health Statistics, Aug. 2020, www.cdc.gov/nchs/products/databriefs/db441.htm. Accessed 5 Dec. 2024.',
    'Bonavolontà, Valerio, et al. "The Role of Parental Involvement in Youth Sport Experience: Perceived and Desired Behavior by Male Soccer Players." National Library of Medicine, Multidisciplinary Digital Publishing Institute, 17 Aug. 2021, pmc.ncbi.nlm.nih.gov/articles/PMC3871410/. Accessed 5 Dec. 2024.',
    'Borelli, Stephen. "Sports parents are out of control and officials don\'t feel safe. Here\'s what\'s at risk." USA Today, 29 Oct. 2023, www.usatoday.com/story/sports/2023/10/15/parent-behavior-in-youth-sports-is-abusive-officials-dont-feel-safe/71194511007/. Accessed 5 Dec. 2024.',
    'Bradley, Matt. "5 Huge Problems with Youth Sports in the US." Ollie Sports, Webflow, 22 Jan. 2020, www.olliesports.com/post/5-huge-problems-with-youth-sports-in-the-us. Accessed 19 Nov. 2024.',
    'Magness, Steve. "How to Raise a Champion—Chill Out." The Growth Equation, 11 May 2022, thegrowtheq.com/how-to-raise-a-champion-chill-out/. Accessed 5 Dec. 2024.',
    'Sherwood, Ben. "Often blamed for problems in youth sports, parents are largely the solution." Sports Business Journal, 13 Mar. 2023, www.sportsbusinessjournal.com/Journal/Issues/2023/03/13/Opinion/sherwood.aspx. Accessed 19 Nov. 2024.',
    '"When You Attend a Youth Sports Event, Know Your Role!" Changing the Game Project, 10 July 2019, changingthegameproject.com/when-you-attend-a-youth-sports-event-know-your-role/. Accessed 4 Dec. 2024.'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(citations.length, (int index) => Card(
        child: ListTile(
          title: Text(citations[index]),
        ),
      )),
    );
  }
}
