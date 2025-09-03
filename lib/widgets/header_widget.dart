import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWidget extends StatelessWidget {
  final VoidCallback onAboutPressed;
  final VoidCallback onSkillsPressed;
  final VoidCallback onExperiencePressed;
  final VoidCallback onProjectsPressed;
  final VoidCallback onContactPressed;

  const HeaderWidget({
    super.key,
    required this.onAboutPressed,
    required this.onSkillsPressed,
    required this.onExperiencePressed,
    required this.onProjectsPressed,
    required this.onContactPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 768;

    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Navigation Menu
            if (isDesktop) ...[
              Row(
                children: [
                  _buildNavItem('About', onAboutPressed),
                  const SizedBox(width: 30),
                  _buildNavItem('Skills', onSkillsPressed),
                  const SizedBox(width: 30),
                  _buildNavItem('Experience', onExperiencePressed),
                  const SizedBox(width: 30),
                  _buildNavItem('Projects', onProjectsPressed),
                  const SizedBox(width: 30),
                  _buildNavItem('Contact', onContactPressed),
                ],
              ),
            ] else ...[
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => _showMobileMenu(context),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String title, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF4A5568),
          ),
        ),
      ),
    );
  }

  void _showMobileMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
                onAboutPressed();
              },
            ),
            ListTile(
              title: const Text('Skills'),
              onTap: () {
                Navigator.pop(context);
                onSkillsPressed();
              },
            ),
            ListTile(
              title: const Text('Experience'),
              onTap: () {
                Navigator.pop(context);
                onExperiencePressed();
              },
            ),
            ListTile(
              title: const Text('Projects'),
              onTap: () {
                Navigator.pop(context);
                onProjectsPressed();
              },
            ),
            ListTile(
              title: const Text('Contact'),
              onTap: () {
                Navigator.pop(context);
                onContactPressed();
              },
            ),
          ],
        ),
      ),
    );
  }
}
