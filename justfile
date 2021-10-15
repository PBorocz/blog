RELEASE_TAG := `date "+%Y-%m-%d"`

# Display list of available targets
default:
    @just --list

# Push a new release to github.
release title release_notes:
	gh release create {{RELEASE_TAG}} -t {title} --notes {release_notes}
