# kakoune-unicode-math

A simple plugin that provides math inputs to Kakoune.

## Install

Clone this repo into `autoload`, and add
```
require-module unicode-math
```
to your `kakrc`.

## Usage

The plugin provides a single function, `insert-unicode`, which should be called in insert mode.
It displays a list of symbols to be added as parameter autocomplete.

You should bind it to an insert-mode key, something like
```
map global insert <c-s> '<a-;>: insert-unicode '
```

