# `@reason-react-native/linear-gradient`

[![Build Status](https://github.com/reason-react-native/linear-gradient/workflows/Build/badge.svg)](https://github.com/reason-react-native/linear-gradient/actions)
[![Version](https://img.shields.io/npm/v/@reason-react-native/linear-gradient.svg)](https://www.npmjs.com/@reason-react-native/linear-gradient)
[![Chat](https://img.shields.io/discord/235176658175262720.svg?logo=discord&colorb=blue)](https://reasonml-community.github.io/reason-react-native/discord/)

[ReScript](https://rescript-lang.org) / [Reason](https://reasonml.github.io) bindings for
[`react-native-linear-gradient`](https://github.com/react-native-community/react-native-linear-gradient).

Exposed as `ReactNativeLinearGradient` module.

`@reason-react-native/linear-gradient` X.y.\* means it's compatible with
`react-native-linear-gradient` X.y.\*

## Installation

When
[`react-native-linear-gradient`](https://github.com/react-native-community/react-native-linear-gradient)
is properly installed & configured by following their installation instructions,
you can install the bindings:

```console
npm install @reason-react-native/linear-gradient
# or
yarn add @reason-react-native/linear-gradient
```

`@reason-react-native/linear-gradient` should be added to `bs-dependencies` in
your `bsconfig.json`:

```diff
{
  //...
  "bs-dependencies": [
    "reason-react",
    "reason-react-native",
    // ...
+    "@reason-react-native/linear-gradient"
  ],
  //...
}
```

## Usage

```reason
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
[contribution guidelines](https://github.com/reason-react-native/.github/blob/master/CONTRIBUTING.md)
before contributing.

## Code of Conduct

We want this community to be friendly and respectful to each other. Please read
[our full code of conduct](https://github.com/reason-react-native/.github/blob/master/CODE_OF_CONDUCT.md)
so that you can understand what actions will and will not be tolerated.
