# Jekyll Portfolio - Md Nawab Ali Khan

A professional portfolio website built with Jekyll, showcasing Java Backend Development skills, projects, and experience.

## 🚀 Quick Start

### Prerequisites
- Ruby (for Jekyll)
- Git
- GitHub account

### Installation
1. Clone the repository:
```bash
git clone https://github.com/nakhandev/nakhandev.github.io.git
cd nakhandev.github.io
```

2. Install Jekyll dependencies:
```bash
bundle install
```

3. Serve locally:
```bash
bundle exec jekyll serve
```

4. Open `http://localhost:4000` in your browser

## 📁 Project Structure

```
nakhandev.github.io/
├── _config.yml          # Jekyll configuration
├── _includes/           # Reusable HTML includes
│   ├── header.html     # Navigation header
│   └── footer.html     # Site footer
├── _layouts/           # Page layouts
│   └── default.html    # Default layout
├── _sass/              # SCSS styles
├── assets/             # Static assets
│   ├── css/
│   ├── js/
│   ├── images/
│   └── cv/            # CV/Resume files
├── *.html              # Static pages
├── *.md                # Markdown pages
└── push.sh             # Automated push script
```

## 🔧 Push Script

The `push.sh` script automates the process of committing and pushing changes to GitHub.

### Usage

#### Interactive Mode (asks for commit message):
```bash
./push.sh
```

#### Auto Mode (uses provided commit message):
```bash
./push.sh "Your commit message here"
```

#### Help:
```bash
./push.sh --help
```

### Features
- ✅ **Interactive commit messages** - prompts for commit message if none provided
- ✅ **Default commit messages** - uses timestamp if no message entered
- ✅ **Git status checking** - shows current changes before committing
- ✅ **Error handling** - handles push failures gracefully
- ✅ **Colored output** - easy to read status messages
- ✅ **Safety checks** - warns if no changes to commit

### Examples
```bash
# Interactive mode
./push.sh

# With custom message
./push.sh "Add new project section"

# Quick update
./push.sh "Fix styling issues"
```

## 🌐 Deployment

### GitHub Pages Setup
1. Go to your repository: `https://github.com/nakhandev/nakhandev.github.io`
2. Click **Settings** tab
3. Scroll to **Pages** section
4. Under **Source**, select **"GitHub Actions"**
5. Click **Save**

Your site will be available at: `https://nakhandev.github.io`

## 📝 Content Management

### Adding New Projects
1. Edit `projects.html` or create new markdown files in `_posts/`
2. Update project information in the HTML structure
3. Add project images to `assets/images/`
4. Run `./push.sh` to deploy changes

### Updating Personal Information
1. Edit `_config.yml` for site-wide changes
2. Update contact information in HTML files
3. Modify social media links as needed
4. Run `./push.sh` to deploy changes

## 🎨 Customization

### Styling
- Main styles: `assets/css/styles.css`
- SCSS files: `_sass/` directory
- Bootstrap 5 with custom dark theme

### Layout
- Header: `_includes/header.html`
- Footer: `_includes/footer.html`
- Default layout: `_layouts/default.html`

## 📧 Contact Form

The contact form uses **Formspree** for email delivery:
- **Formspree ID:** `xyznbyyw`
- **Email:** `nakdev.nakhan@gmail.com`
- **Backup:** Direct email links throughout the site

## 🔧 Development

### Local Development
```bash
# Install dependencies
bundle install

# Serve locally
bundle exec jekyll serve

# Build for production
bundle exec jekyll build
```

### Push Changes
```bash
# Quick push with default message
./push.sh

# Push with custom message
./push.sh "Add new features"

# Check what will be pushed
git status
```

## 📱 Features

- ✅ **Responsive Design** - Works on all devices
- ✅ **Dark Theme** - Modern, professional appearance
- ✅ **SEO Optimized** - Proper meta tags and structure
- ✅ **Fast Loading** - Optimized assets and code
- ✅ **Contact Form** - Working Formspree integration
- ✅ **CV Download** - PDF resume available
- ✅ **Project Showcase** - Featured projects section
- ✅ **Social Links** - GitHub, LinkedIn integration

## 🛠️ Technologies Used

- **Static Site Generator:** Jekyll
- **Frontend:** HTML5, CSS3, JavaScript
- **CSS Framework:** Bootstrap 5
- **Icons:** Bootstrap Icons
- **Email Service:** Formspree
- **Version Control:** Git & GitHub
- **Deployment:** GitHub Pages

## 📞 Support

For questions or issues:
- **Email:** nakdev.nakhan@gmail.com
- **GitHub:** https://github.com/nakhandev
- **LinkedIn:** https://linkedin.com/in/nawabnakhan

---

**Built with ❤️ by Md Nawab Ali Khan**
