# CLI Quick references

Things I might not remember easily so I jot them down here


### Postgres

__Install__
`brew update` and `brew doctor`
`brew install posgres`

__Running It__
`posgres -D /usr/local/var/postgres`

`launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist`

__Load at Startup__
`ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents`

