# Shortcuts

<!-- Values should be added in alphabetical order -->

## o | Open

Shortcut for `xdg-open`, primarily used to open urls.

```shell
echo 'https://example.com | o
```

```shell
o 'https://example.com
```

## p | Paste

Shortcut for `xclip -out`, primarily used to paste into a pipe.

```shell
p | something
```

## pc | Paste Clipboard

Shortcut for `xclip -out -selection clipboard`, primarily used to paste into a pipe.

```shell
pc | something
```

## w | Watch for changes

Shortcut to watch for filesystem changes and execute some comamnd.

```shell
w mvn test
```

## y | Yank

Shortcut for `xclip -in`, primarily used to copy from a previous command.

```shell
echo 'this is a test' | y
```

```shell
y 'this is a test'
```

## yc | Yank Clipboard

Shortcut for `xclip -in -selection clipboard`, same as `y` except it puts the input onto your clipboard.

```shell
echo 'this is a test' | yc
```

```shell
yc 'this is a test'
```

