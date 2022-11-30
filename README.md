# amazon-codeartifact-action
Action to authenticate against amazon codeartifact

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
        domain: 'domain-name'
        domain-owner: 'XXXXXXXXXXXX'
      # optional
        aws-region: 'eu-west-1'
        repository: 'repository-name'
        tool: 'npm'
```

### Inputs

| Input                         | Description                                                   | Default   |
|-------------------------------|---------------------------------------------------------------|-----------|
| `domain` _(required)_         | CodeArtifact domain to which the package repository belongs   |           |
| `domain-owner` _(required)_   | Owner (AWS Account) of the CodeArtifact domain                |           |
| `aws-region` _(optional)_     | AWS Region                                                    |eu-west-1  |
| `repository` _(optional)_     | CodeArtifact repository for which to optionally fetch the URL |           |
| `tool` _(optional)_           | Format of the repository URL                                  | npm       |
