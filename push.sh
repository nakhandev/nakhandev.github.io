#!/bin/bash

# Jekyll Portfolio Push Script
# Author: Md Nawab Ali Khan
# Description: Automated script to commit and push changes to GitHub

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if we're in a git repository
check_git_repo() {
    if ! git rev-parse --git-dir > /dev/null 2>&1; then
        print_error "Not a git repository!"
        exit 1
    fi
}

# Show current git status
show_status() {
    print_status "Current git status:"
    git status --porcelain
    echo ""
}

# Get commit message
get_commit_message() {
    if [ -z "$1" ]; then
        echo ""
        read -p "Enter commit message (or press Enter for default): " commit_msg

        if [ -z "$commit_msg" ]; then
            commit_msg="Update Jekyll portfolio - $(date +'%Y-%m-%d %H:%M:%S')"
        fi
    else
        commit_msg="$1"
    fi

    echo "$commit_msg"
}

# Main push function
do_push() {
    local commit_msg="$1"

    print_status "Adding all changes to git..."
    if git add .; then
        print_success "Changes added to staging area"
    else
        print_error "Failed to add changes"
        exit 1
    fi

    print_status "Committing with message: '$commit_msg'"
    if git commit -m "$commit_msg"; then
        print_success "Changes committed successfully"
    else
        print_warning "No changes to commit or commit failed"
        return 0
    fi

    print_status "Pushing to GitHub..."
    if git push origin master; then
        print_success "Changes pushed to GitHub successfully!"
        print_success "Your Jekyll site is updated at: https://nakhandev.github.io"
    else
        print_error "Failed to push to GitHub"
        print_warning "You might need to resolve merge conflicts or check your credentials"
        exit 1
    fi
}

# Show usage
show_usage() {
    echo "Jekyll Portfolio Push Script"
    echo ""
    echo "Usage:"
    echo "  $0                    # Interactive mode - will ask for commit message"
    echo "  $0 'commit message'   # Auto mode - use provided commit message"
    echo ""
    echo "Examples:"
    echo "  $0"
    echo "  $0 'Add new project section'"
    echo "  $0 'Fix contact form styling'"
    echo ""
}

# Main execution
main() {
    echo "🚀 Jekyll Portfolio Push Script"
    echo "================================="
    echo ""

    # Check if we're in the right directory
    if [ ! -f "_config.yml" ]; then
        print_error "Not in Jekyll project directory!"
        print_error "Please run this script from your Jekyll project root."
        exit 1
    fi

    # Check git repository
    check_git_repo

    # Show current status
    show_status

    # Check if there are any changes
    if git diff --quiet && git diff --staged --quiet; then
        print_warning "No changes to commit!"
        echo ""
        read -p "Do you want to continue anyway? (y/N): " -n 1 -r
        echo ""
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            print_status "Push cancelled."
            exit 0
        fi
    fi

    # Get commit message
    commit_msg=$(get_commit_message "$1")

    echo ""
    print_status "Ready to push with commit message: '$commit_msg'"
    read -p "Continue? (Y/n): " -n 1 -r
    echo ""

    if [[ $REPLY =~ ^[Nn]$ ]]; then
        print_status "Push cancelled."
        exit 0
    fi

    # Perform the push
    do_push "$commit_msg"

    echo ""
    print_success "🎉 Push completed successfully!"
    print_status "Don't forget to enable GitHub Pages if not already done:"
    print_status "Go to https://github.com/nakhandev/nakhandev.github.io → Settings → Pages → Source: GitHub Actions"
}

# Handle script arguments
case "${1:-}" in
    "-h"|"--help")
        show_usage
        exit 0
        ;;
    *)
        main "$1"
        ;;
esac
