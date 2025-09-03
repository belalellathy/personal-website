# Belal Mohamed - Portfolio Website

A beautiful, responsive portfolio website built with Flutter for web deployment.

## Features

- **Modern Design**: Clean, professional UI with gradient backgrounds and smooth animations
- **Responsive Layout**: Optimized for both desktop and mobile devices
- **Interactive Sections**: 
  - Hero section with animated text
  - About section with statistics
  - Skills showcase with technology icons
  - Featured projects gallery
  - Contact form and social links
- **Smooth Navigation**: Scroll-to-section navigation with smooth animations
- **Professional Styling**: Using Google Fonts (Poppins) and Font Awesome icons

## Technologies Used

- Flutter 3.0+
- Dart
- Google Fonts
- Font Awesome Flutter
- Animated Text Kit
- URL Launcher

## Getting Started

### Prerequisites

- Flutter SDK (3.0 or higher)
- Dart SDK
- Web browser for testing

### Installation

1. Clone the repository:
```bash
git clone <your-repo-url>
cd personal-website
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the application:
```bash
flutter run -d chrome
```

### Building for Web

To build the project for web deployment:

```bash
flutter build web
```

The built files will be in the `build/web` directory.

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── screens/
│   └── home_screen.dart     # Main screen with navigation
└── widgets/
    ├── header_widget.dart   # Navigation header
    ├── hero_section.dart    # Hero/banner section
    ├── about_section.dart   # About me section
    ├── skills_section.dart  # Skills and technologies
    ├── projects_section.dart # Portfolio projects
    ├── contact_section.dart # Contact form and info
    └── footer_widget.dart   # Footer section
```

## Customization

### Personal Information
Update the following files with your personal information:
- `lib/widgets/hero_section.dart` - Name and titles
- `lib/widgets/about_section.dart` - Bio and statistics
- `lib/widgets/contact_section.dart` - Contact details and social links

### Projects
Modify `lib/widgets/projects_section.dart` to showcase your actual projects with:
- Project titles and descriptions
- Technology stacks
- GitHub and live demo links

### Styling
The color scheme can be customized by updating the gradient colors and accent colors throughout the widgets.

## Deployment

This Flutter web app can be deployed to:
- GitHub Pages
- Netlify
- Vercel
- Firebase Hosting
- Any static hosting service

## License

This project is open source and available under the [MIT License](LICENSE).

## Contact

Belal Mohamed - [your-email@example.com]

Project Link: [https://github.com/yourusername/personal-website]
