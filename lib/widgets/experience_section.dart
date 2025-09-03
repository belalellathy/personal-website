import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 768;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 80 : 20,
        vertical: 80,
      ),
      color: const Color(0xFFF8FAFC),
      child: Column(
        children: [
          Text(
            'Work Experience',
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
          _buildExperienceCard(
            company: 'Spinneys Egypt',
            position: 'Database Administrator',
            duration: '1/07/2025-31/08/2025',
            location: 'Egypt',
            description: 'Completed summer internship as a Database Administrator, gaining hands-on experience in SQL server management, database optimization, and business reporting systems.',
            responsibilities: [
              'Assisted in managing and maintaining SQL server systems, ensuring data integrity and security',
              'Monitored database performance and optimized queries to improve efficiency',
              'Supported backup, restore, and disaster recovery processes',
              'Found a way from SSMS to check backup jobs for 34 branches with one query using registered servers',
              'Designed and deployed business reports using SQL Server Reporting Services (SSRS) and Report Builder',
              'Created and optimized stored procedures to extract and process data efficiently',
              'Linked database tables and stored procedures to pre-designed report templates for consistent reporting standards',
            ],
            technologies: ['SQL Server', 'SSMS', 'SSRS', 'Report Builder', 'T-SQL'],
            isDesktop: isDesktop,
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceCard({
    required String company,
    required String position,
    required String duration,
    required String location,
    required String description,
    required List<String> responsibilities,
    required List<String> technologies,
    required bool isDesktop,
  }) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            position,
            style: GoogleFonts.poppins(
              fontSize: isDesktop ? 24 : 20,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF2D3748),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            company,
            style: GoogleFonts.poppins(
              fontSize: isDesktop ? 18 : 16,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF667EEA),
            ),
          ),
          const SizedBox(height: 5),
          Wrap(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.calendar_today,
                    size: 16,
                    color: const Color(0xFF4A5568),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    duration,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color(0xFF4A5568),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.location_on,
                    size: 16,
                    color: const Color(0xFF4A5568),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    location,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color(0xFF4A5568),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: const Color(0xFF4A5568),
              height: 1.6,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Key Responsibilities:',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF2D3748),
            ),
          ),
          const SizedBox(height: 10),
          ...responsibilities.map((responsibility) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                        color: Color(0xFF667EEA),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        responsibility,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xFF4A5568),
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(height: 20),
          Text(
            'Technologies Used:',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF2D3748),
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: technologies
                .map((tech) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF667EEA).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color(0xFF667EEA).withOpacity(0.3),
                        ),
                      ),
                      child: Text(
                        tech,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xFF667EEA),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
