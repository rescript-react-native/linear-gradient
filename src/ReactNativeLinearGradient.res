type position

@obj external position: (~x: float, ~y: float, unit) => position = ""

@module("react-native-linear-gradient") @react.component
external make: (
  ~style: ReactNative.Style.t=?,
  ~colors: array<string>,
  ~locations: array<float>=?,
  ~children: React.element,
  ~start: position=?,
  ~_end: position=?,
  ~angleCenter: position=?,
  ~angle: float=?,
  ~useAngle: bool=?,
) => React.element = "default"
