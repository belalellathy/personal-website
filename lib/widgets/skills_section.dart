import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 768;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 80 : 20,
        vertical: 80,
      ),
      color: Colors.white,
      child: Column(
        children: [
          Text(
            'Skills & Technologies',
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
            crossAxisCount: isDesktop ? 4 : 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: isDesktop ? 1.2 : 1.0,
            children: [
              _buildSkillCard(
                FontAwesomeIcons.flutter,
                'Flutter',
                'Cross-platform mobile development',
                const Color(0xFF02569B),
              ),
              _buildSkillCard(
                FontAwesomeIcons.code,
                'Dart',
                'Programming language for Flutter',
                const Color(0xFF0175C2),
              ),
              _buildSkillCard(
                FontAwesomeIcons.mobile,
                'Mobile UI/UX',
                'Beautiful and intuitive interfaces',
                const Color(0xFF667EEA),
              ),
              _buildSkillCard(
                FontAwesomeIcons.database,
                'SQL Server',
                'Database administration and optimization',
                const Color(0xFFFFCA28),
              ),
              _buildSkillCard(
                FontAwesomeIcons.code,
                'C++',
                'Object-oriented programming with Qt',
                const Color(0xFF00599C),
              ),
              _buildSkillCard(
                FontAwesomeIcons.python,
                'Python',
                'Data structures and algorithms',
                const Color(0xFF3776AB),
              ),
              _buildSkillCard(
                FontAwesomeIcons.git,
                'Git & GitHub',
                'Version control and collaboration',
                const Color(0xFFF05032),
              ),
              _buildSkillCard(
                FontAwesomeIcons.figma,
                'Figma',
                'UI/UX design and prototyping',
                const Color(0xFFF24E1E),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSkillCard(IconData icon, String title, String description, Color color) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
        border: Border.all(
          color: Colors.grey.withOpacity(0.1),
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          FaIcon(
            icon,
            size: 40,
            color: color,
          ),
          const SizedBox(height: 15),
          Flexible(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF2D3748),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 6),
          Flexible(
            child: Text(
              description,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                fontSize: 11,
                color: const Color(0xFF4A5568),
                height: 1.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
