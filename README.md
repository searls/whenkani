# Whenkani

Tells you when you're ready to study at
[WaniKani](https://www.wanikani.com/dashboard).

## Installing

```
$ bundle gem install whenkani
```

## Usage

First, you'll need your API key from your [Account
page](https://www.wanikani.com/account)

Set the API key via an environment variable (usually sourced in a profile):

```
$ WANIKANI_API_KEY=abcdef12345 whenkani
```

Set the API key as a command line argument:
```
$ whenkani abcdef12345
```

## Output

### When you're ready to study

When you have lessons or reviews to do, you'll see this output:

```
$ whenkani
You're ready to study!
https://www.wanikani.com/dashboard
```

`whenkani` will exit with code 0 if you're ready to study.

### When you have no lessons or reviews

When you don't have lessons yet, whenkani will tell you how long to wait:

```
$ whenkani
You're not ready, come back in 4 minutes
```

`whenkani` will exit non-zero if you're not ready to study. This may be useful
if you want to incorporate this gem into other automation scripts.
