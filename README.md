# `@rescript-react-native/linear-gradient`

[![Build Status](https://github.com/rescript-react-native/linear-gradient/workflows/Build/badge.svg)](https://github.com/rescript-react-native/linear-gradient/actions)
[![Version](https://img.shields.io/npm/v/@rescript-react-native/linear-gradient.svg)](https://www.npmjs.com/@rescript-react-native/linear-gradient)
[![ReScript Forum](https://img.shields.io/discourse/posts?color=e6484f&label=ReScript%20Forum&server=https%3A%2F%2Fforum.rescript-lang.org)](https://forum.rescript-lang.org/)

[ReScript](https://rescript-lang.org) bindings for
[`react-native-linear-gradient`](https://github.com/react-native-linear-gradient/react-native-linear-gradient).

Exposed as `ReactNativeLinearGradient` module.

`@rescript-react-native/linear-gradient` X.y.\* means it's compatible with
`react-native-linear-gradient` X.y.\*

## Installation

When
[`react-native-linear-gradient`](https://github.com/react-native-linear-gradient/react-native-linear-gradient)
is properly installed & configured by following their installation instructions,
you can install the bindings:

```console
npm install @rescript-react-native/linear-gradient
# or
yarn add @rescript-react-native/linear-gradient
```

`@rescript-react-native/linear-gradient` should be added to `bs-dependencies` in
your `bsconfig.json`:

```diff
{
  //...
  "bs-dependencies": [
    "@rescript/react",
    "rescript-react-native",
    // ...
+    "@rescript-react-native/linear-gradient"
  ],
  //...
}
```

## Usage

```rescript
open ReactNative

module MyApp = {
  let styles = Style.(
    StyleSheet.create({
      "container": viewStyle(~flex=1., ())
    })
  );

  [@react.component]
  let make = () => {
    <ReactNativeLinearGradient colors=[|"#faa", "#afa"|] style=styles##container>
      <Text>
        "Hello world"->React.string
      </Text>
    </ReactNativeLinearGradient>
  }
};
```

---

## Changelog

Check the [changelog](./CHANGELOG.md) for more informations about recent
releases.

---

## Contribute

Read the
[contribution guidelines](https://github.com/rescript-react-native/.github/blob/master/CONTRIBUTING.md)
before contributing.

## Code of Conduct

We want this community to be friendly and respectful to each other. Please read
[our full code of conduct](https://github.com/rescript-react-native/.github/blob/master/CODE_OF_CONDUCT.md)
so that you can understand what actions will and will not be tolerated.
