import 'package:flutter/material.dart';
import 'package:soccer_app/utils/colors.dart';
import 'package:soccer_app/utils/components/my_card.dart';
import 'package:soccer_app/utils/models/match.dart';

class AppHomeScreen extends StatefulWidget {
  const AppHomeScreen({super.key});

  @override
  State<AppHomeScreen> createState() => _AppHomeScreenState();
}

class _AppHomeScreenState extends State<AppHomeScreen> {
  List<Match> matches = [
    Match(
      stadium: "St. James' Park",
      week: "Week 10",
      homeTeam: "Newcastle",
      awayTeam: "Chelsea",
      homeScore: "0",
      awayScore: "3",
      time: "83'",
      homeLogoUrl: 'assets/img/newcastle.png',
      awayLogoUrl: 'assets/img/chelsea.png',
    ),
    Match(
      stadium: "Emirates Stadium",
      week: "Week 10",
      homeTeam: "Arsenal",
      awayTeam: "Liverpool",
      homeScore: "2",
      awayScore: "1",
      time: "90+1'",
      homeLogoUrl: 'assets/img/arsenal.png',
      awayLogoUrl: 'assets/img/liverpool.png',
    ),
    Match(
      stadium: "Old Trafford",
      week: "Week 10",
      homeTeam: "Man United",
      awayTeam: "Tottenham",
      homeScore: "1",
      awayScore: "1",
      time: "74'",
      homeLogoUrl: 'assets/img/manu.png',
      awayLogoUrl: 'assets/img/tottenham.png',
    ),
    Match(
      stadium: "King Power Stadium",
      week: "Week 10",
      homeTeam: "Leicester City",
      awayTeam: "West Ham",
      homeScore: "4",
      awayScore: "2",
      time: "67'",
      homeLogoUrl: 'assets/img/leicester.png',
      awayLogoUrl: 'assets/img/westham.png',
    ),
    Match(
      stadium: "Etihad Stadium",
      week: "Week 10",
      homeTeam: "Man City",
      awayTeam: "Aston Villa",
      homeScore: "5",
      awayScore: "2",
      time: "87'",
      homeLogoUrl: 'assets/img/mancity.png',
      awayLogoUrl: 'assets/img/aston.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg',
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/img/premierlogo.png',
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "Premier League",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryText,
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: AppColors.primaryText,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              offset: Offset(0, 2)),
                        ]),
                    child: const Center(
                      child: Icon(
                        Icons.search_sharp,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Live Matches",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondaryText),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 265,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: matches.map((match) {
                    return MatchCard(
                      isSelected: true,
                      onTap: () {
                        // Handle tap event here
                      },
                      league: match.stadium,
                      week: match.week,
                      homeTeam: match.homeTeam,
                      awayTeam: match.awayTeam,
                      homeScore: match.homeScore,
                      awayScore: match.awayScore,
                      time: match.time,
                      homeLogoUrl: match.homeLogoUrl,
                      awayLogoUrl: match.awayLogoUrl,
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
