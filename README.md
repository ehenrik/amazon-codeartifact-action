# go-license check Action
Run go's license checker.

- [Licenses tool for Go](https://github.com/google/go-licenses)

# Usage
See [action.yml](action.yml)

## Basic

```yaml
name: Go licenses check
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - name: check go licenses
      uses: opzkit/go-license-check-action@v1.0.0
      # optional
      with:
        go-version: '1.19'
        govuln-version: 'latest'
        packages: './...'
```

### Inputs

| Input                         | Description                                    |
|-------------------------------|------------------------------------------------|
| `package` _(optional)_        | The package you want to scan, default: "./..." |
| `go-version` _(optional)_     | The go version to use, default: "1.19"         |
| `govuln-version` _(optional)_ | The   govuln version to use, default: "latest" |
