# Blog Deployer

A tiny webhook handler which should deploy my blog.

The HTTP server is implemented in Go. The build script is (probably) a bash script.

1. Check out the latest commit (on master).
1. Run the docker-encapsulated build.
1. Copy the results to the correct location on the server.

## Configuration

Configuration is stored in `/etc/blog_deployer/config.yaml`.

```yaml
repo: git@bitbucket.org:judy2k/judy.co.uk.git
repo_key: /etc/blog_deployer/repo_key
data_dir: /var/blog_deployer
```

## Concerns

1. If multiple hooks are received while the build is happening, all should be ignored except the most recent.
1. The webhooks should be authorized as from bitbucket, as much as is possible.
