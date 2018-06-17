# Static site generator dockerfiles for CI

These Docker images include Ruby for Rake tasks, and JRE 8 so the excellent
[`s3_website` gem](https://github.com/laurilehmijoki/s3_website) will be able to
deploy.

## Images available

```
seandmr/ssg:hugo
seandmr/ssg:hugo-0.42.1 # same as above, just version named
seandmr/ssg:jekyll
```

The only difference between the Hugo and Jekyll images is that the Hugo image
includes `wget` and Hugo 0.42.1. The Jekyll image does not include Jekyll
prepackaged--specify the version you need in a Gemfile. (Hugo is versioned
because the binary has to be preinstalled)
