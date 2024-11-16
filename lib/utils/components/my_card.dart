import 'package:flutter/material.dart';
import 'package:soccer_app/utils/colors.dart';

class MatchCard extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final String league;
  final String week;
  final String homeTeam;
  final String awayTeam;
  final String homeScore;
  final String awayScore;
  final String time;
  final String homeLogoUrl;
  final String awayLogoUrl;

  const MatchCard({
    super.key,
    required this.isSelected,
    required this.onTap,
    required this.league,
    required this.homeTeam,
    required this.awayTeam,
    required this.homeScore,
    required this.awayScore,
    required this.time,
    required this.homeLogoUrl,
    required this.awayLogoUrl,
    required this.week,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? AppColors.activeIcon : AppColors.secondaryText,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // League and Week
                Text(
                  league,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.whiteText,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  week,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.whiteText.withOpacity(0.7),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),

                // Teams and Score Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Home Team
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                            homeLogoUrl,
                            height: 50,
                            width: 50,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            homeTeam,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.whiteText,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.whiteText.withOpacity(0.7),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Score
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            homeScore,
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: AppColors.whiteText,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              ':',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: AppColors.whiteText,
                              ),
                            ),
                          ),
                          Text(
                            awayScore,
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: AppColors.whiteText,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Away Team
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                            awayLogoUrl,
                            height: 50,
                            width: 50,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            awayTeam,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.whiteText,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Away',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.whiteText.withOpacity(0.7),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // Time
                const SizedBox(height: 16),
                Center(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppColors.whiteText.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      time,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.whiteText,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
