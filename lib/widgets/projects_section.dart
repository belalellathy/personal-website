import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 768;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 80 : 20,
        vertical: 80,
      ),
      color: const Color(0xFFF7FAFC),
      child: Column(
        children: [
          Text(
            'Featured Projects',
            style: GoogleFonts.poppins(
              fontSize: isDesktop ? 48 : 36,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF2D3748),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 60,
            height: 4,
            decoration: BoxDecoration(
              color: const Color(0xFF667EEA),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 60),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: isDesktop ? 3 : 1,
            crossAxisSpacing: 30,
            mainAxisSpacing: 30,
            childAspectRatio: isDesktop ? 0.8 : 0.75,
            children: [
              _buildProjectCard(
                'Evently - Event Management App',
                'Modern event management mobile app with event browsing, creation, and participation. Features Firebase Authentication and Firestore integration.',
                ['Flutter', 'Firebase', 'Firestore','Authentication'],
                'https://github.com/belalellathy/Evently',
                null, // No live demo available
                'assets/images/projects/screenshot-2025-08-15-at-7-01-.png .png', // Add your project image here
                const Color(0xFF667EEA),
              ),
              _buildProjectCard(
                'News App',
                'Cross-platform mobile application that fetches real-time news articles from various categories using RESTful API with clean UI and responsive design.',
                ['Flutter', 'REST API'],
                'https://github.com/belalellathy/news',
                null, // No live demo available
                'assets/images/projects/screenshot-2025-08-15-at-5-44-.png', // Add your project image here
                const Color(0xFFA9A9A9),
              ),
              _buildProjectCard(
                'Islami App',
                'Islamic mobile application featuring Quran surahs, sebha, and Hadith with elegant UI and offline data management for seamless user experience.',
                ['Flutter', 'Dart', 'shared_preferences'],
                'https://github.com/belalellathy/islami_app',
                "https://belalellathy.github.io/islami_app/", 
                'assets/images/projects/simulator-screenshot-iphone-16-2.png', // Add your project image here
                const Color(0xFFFFD700),
              ),
              _buildProjectCard(
                'Library Management System',
                'Desktop application for managing library operations with user roles, authentication, and searchable catalog using C++ Qt and MySQL.',
                ['C++', 'Qt', 'MySQL'],
                'https://github.com/belalellathy/libararysystem',
                null, // No live demo available
                'assets/images/projects/Screenshot 2025-09-03 at 4.06.49 PM.png', // Add your project image here
                const Color(0xFF9C27B0),
              ),
              _buildProjectCard(
                'Balanced Meal App',
                'Flutter nutrition app for calculating daily caloric needs, customizing meal orders, and tracking nutritional balance with API integration.',
                ['Flutter', 'REST API', 'Nutrition'],
                'https://github.com/belalellathy/balanced_meal-main',
                "https://belalellathy.github.io/balanced_meal-main/", 
                'assets/images/projects/simulator-screenshot-iphone-16.png', // Add your project image here
                const Color(0xFFED8936),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(
    String title,
    String description,
    List<String> technologies,
    String githubUrl,
    String? liveUrl,
    String? imagePath,
    Color accentColor,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: accentColor.withOpacity(0.1),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: imagePath != null
                ? ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      imagePath,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Center(
                          child: Icon(
                            Icons.phone_android,
                            size: 80,
                            color: accentColor,
                          ),
                        );
                      },
                    ),
                  )
                : Center(
                    child: Icon(
                      Icons.phone_android,
                      size: 80,
                      color: accentColor,
                    ),
                  ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF2D3748),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: Text(
                      description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: const Color(0xFF4A5568),
                        height: 1.4,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: technologies
                        .map((tech) => Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: accentColor.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text(
                                tech,
                                style: GoogleFonts.poppins(
                                  fontSize: 11,
                                  color: accentColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                  const Spacer(),
                  if (liveUrl != null)
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () => _launchUrl(githubUrl),
                            icon: const FaIcon(
                              FontAwesomeIcons.github,
                              size: 16,
                            ),
                            label: const Text('Code'),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: accentColor,
                              side: BorderSide(color: accentColor),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () => _launchUrl(liveUrl),
                            icon: const Icon(Icons.launch, size: 16),
                            label: const Text('Live'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: accentColor,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  else
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () => _launchUrl(githubUrl),
                        icon: const FaIcon(
                          FontAwesomeIcons.github,
                          size: 16,
                        ),
                        label: const Text('View Code'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: accentColor,
                          side: BorderSide(color: accentColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }
}
