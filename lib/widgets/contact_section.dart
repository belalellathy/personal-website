import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

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
            'Get In Touch',
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
          const SizedBox(height: 40),
          Text(
            'I\'m always interested in new opportunities and collaborations.\nFeel free to reach out if you\'d like to work together!',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: const Color(0xFF4A5568),
              height: 1.6,
            ),
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: _buildContactInfo(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContactInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact Information',
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF2D3748),
          ),
        ),
        const SizedBox(height: 30),
        _buildContactItem(
          FontAwesomeIcons.envelope,
          'Email',
          'belalmohamedellathy@gmail.com',
          'mailto:belalmohamedellathy@gmail.com',
        ),
        const SizedBox(height: 20),
        _buildContactItem(
          FontAwesomeIcons.phone,
          'Phone',
          '+20 109 186 4529',
          'tel:+201091864529',
        ),
        const SizedBox(height: 20),
        _buildContactItem(
          FontAwesomeIcons.locationDot,
          'Location',
          'Giza, Egypt',
          '',
        ),
        const SizedBox(height: 40),
        Text(
          'Follow Me',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF2D3748),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            _buildSocialButton(
              FontAwesomeIcons.github,
              'https://github.com/belalellathy',
              const Color(0xFF333333),
            ),
            const SizedBox(width: 15),
            _buildSocialButton(
              FontAwesomeIcons.linkedin,
              'https://linkedin.com/in/belalellathy',
              const Color(0xFF0077B5),
            ),
            const SizedBox(width: 15),
            _buildSocialButton(
              FontAwesomeIcons.envelope,
              'mailto:belalmohamedellathy@gmail.com',
              const Color(0xFFEA4335),
            ),
          ],
        ),
      ],
    );
  }


  Widget _buildContactItem(IconData icon, String title, String value, String url) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xFF667EEA).withOpacity(0.1),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: FaIcon(
              icon,
              color: const Color(0xFF667EEA),
              size: 20,
            ),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: const Color(0xFF4A5568),
                ),
              ),
              SelectableText(
                value,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF2D3748),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSocialButton(IconData icon, String url, Color color) {
    return InkWell(
      onTap: () => _launchUrl(url),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: FaIcon(
            icon,
            color: color,
            size: 20,
          ),
        ),
      ),
    );
  }



  Future<void> _launchUrl(String url) async {
    try {
      final Uri uri = Uri.parse(url);
      await launchUrl(
        uri,
        mode: LaunchMode.platformDefault,
      );
    } catch (e) {
      print('Error launching URL: $e');
    }
  }
}
