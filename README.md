# Md Nawab Ali Khan - Portfolio (Jekyll Site)

A static portfolio website built with Jekyll and hosted on GitHub Pages, showcasing Java backend development skills and projects.

## 🌐 Live Site

**Portfolio URL:** `https://nakhandev.github.io`

## 🚀 Features

- **Static Site Generation** with Jekyll
- **Responsive Bootstrap 5** design
- **Professional Portfolio** layout
- **Contact Form** with Formspree integration
- **SEO Optimized** with meta tags
- **Mobile Friendly** design
- **Fast Loading** static pages

## 📁 Site Structure

```
nakhandev.github.io/
├── _config.yml          # Jekyll configuration
├── _layouts/
│   └── default.html    # Main layout template
├── _includes/
│   ├── header.html     # Navigation header
│   └── footer.html     # Site footer
├── assets/
│   ├── css/
│   │   └── styles.css  # Custom styles
│   └── js/
│       └── scripts.js  # JavaScript functionality
├── index.html          # Homepage (static HTML)
├── projects.md         # Projects page
├── contact.md          # Contact page
└── README.md          # This file
```

## 🔧 Development

### Local Development

1. **Install Jekyll** (if not installed)
   ```bash
   gem install jekyll bundler
   ```

2. **Install dependencies**
   ```bash
   bundle install
   ```

3. **Run locally**
   ```bash
   bundle exec jekyll serve
   ```

4. **View site**
   Open `http://localhost:4000` in your browser

### Build for Production

```bash
bundle exec jekyll build
```

## 📝 Content Management

### Adding Projects

Edit the projects section in `index.html` or create new project pages using:
```markdown
---
layout: default
title: "Project Name"
---

# Project Description

Content here...
```

### Updating Information

- **Personal Info:** Edit `_config.yml`
- **Site Settings:** Modify `_config.yml`
- **Content:** Update markdown files
- **Styling:** Modify `assets/css/styles.css`

## 🚀 Deployment

### GitHub Pages Setup

1. **Enable GitHub Pages**
   - Go to repository settings
   - Scroll to "Pages" section
   - Select "GitHub Actions" as source
   - Save changes

2. **Automatic Deployment**
   - Push changes to `main` branch
   - GitHub Actions will build and deploy automatically

### Manual Deployment

```bash
# Build site
jekyll build

# Deploy to GitHub Pages
gh-pages -d _site
```

## 🎨 Customization

### Colors and Styling
- Edit `assets/css/styles.css`
- Modify CSS custom properties
- Update Bootstrap theme colors

### Layout Changes
- Modify `_layouts/default.html`
- Update `_includes/header.html` and `_includes/footer.html`
- Customize navigation and footer

### Adding Pages
1. Create new `.md` file in root directory
2. Add front matter with layout
3. Add navigation link in header include

## 📧 Contact Form

The contact form uses **Formspree** for email handling:
- No server required
- Spam protection included
- Custom email notifications

To change the email address:
1. Update the form action URL
2. Update email in `_config.yml`

## 🔍 SEO

The site includes:
- **Meta tags** for search engines
- **Open Graph** tags for social media
- **Twitter Card** support
- **Sitemap** generation
- **Structured data** ready

## 📱 Responsive Design

- **Mobile-first** approach
- **Bootstrap 5** responsive grid
- **Touch-friendly** navigation
- **Optimized** for all screen sizes

## 🚨 Troubleshooting

### Common Issues

1. **Site not loading**
   - Check if GitHub Pages is enabled
   - Verify repository settings
   - Check build logs in Actions tab

2. **Styles not loading**
   - Verify asset paths
   - Check file permissions
   - Clear browser cache

3. **Contact form not working**
   - Verify Formspree configuration
   - Check email address in form action
   - Test with different email

### Build Issues

```bash
# Clean and rebuild
bundle exec jekyll clean
bundle exec jekyll build

# Check for errors
bundle exec jekyll build --trace
```

## 📞 Support

For issues or questions:
- Check GitHub repository issues
- Review Jekyll documentation
- Test locally before deploying

---

**Built with ❤️ using Jekyll, HTML5, CSS3 & Bootstrap**

⭐ If you found this project helpful, please give it a star!
