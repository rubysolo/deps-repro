# Repro

This repo illustrates an issue with the `ssl_verify_fun` workaround for Elixir 1.15.

```
> mix deps.get
Resolving Hex dependencies...
Resolution completed in 0.017s
Unchanged:
  certifi 2.9.0
  combine 0.10.0
  expo 0.4.1
  gettext 0.22.2
  hackney 1.18.1
  idna 6.1.1
  metrics 1.0.1
  mimerl 1.2.0
  parse_trans 3.3.1
  ssl_verify_fun 1.1.6
  timex 3.7.11
  tzdata 1.1.1
  unicode_util_compat 0.7.0
Dependencies have diverged:
* ssl_verify_fun (Hex package)
  different specs were given for the ssl_verify_fun app:

  > In deps/hackney/rebar.config:
    {:ssl_verify_fun, "~> 1.1.0", [env: :prod, hex: "ssl_verify_fun", repo: "hexpm", optional: false]}

  > In apps/app1/mix.exs:
    {:ssl_verify_fun, "~> 1.1.6", [env: :prod, hex: "ssl_verify_fun", only: [:test], runtime: false, override: true, repo: "hexpm"]}

  Ensure they match or specify one of the above in your deps and set "override: true"
** (Mix) Can't continue due to errors on dependencies
```
