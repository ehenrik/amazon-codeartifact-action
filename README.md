# amazon-codeartifact-action
Run go's license checker.

- [Licenses tool for Go](https://github.com/google/go-licenses)

# Usage
See [action.yml](action.yml)

## Basic

```yaml
name: amazon codeartifact action
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - name: amazon codeartifact action
      uses: opzkit/amazon-codeartifact-action@v1.0.0
      with:
      # required
        aws-region: 'eu-west-1'
        domain: 'domain-name'
        domain-owner: 'XXXXXXXXXXXX'
      # optional
        repository: 'repository-name'
        tool: 'npm'
```

### Inputs

| Input                         | Description                                                   | Default   |
|-------------------------------|---------------------------------------------------------------|-----------|
| `aws-region` _(required)_     | AWS Region                                                    |eu-west-1  |
| `domain` _(required)_         | CodeArtifact domain to which the package repository belongs   |           |
| `domain-owner` _(required)_   | Owner (AWS Account) of the CodeArtifact domain                |           |
| `repository` _(optional)_     | CodeArtifact repository for which to optionally fetch the URL |           |
| `tool` _(optional)_           | Format of the repository URL                                  | npm       |
