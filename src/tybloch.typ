#import "utils.typ": cartesian-to-spherical, spherical-to-cartesian
#import "draw.typ": _draw-bloch


/// Draws a Bloch sphere from the #math.theta and #math.phi angles. The magnitude is 1 by default.
///
/// *Example*
///
/// ```example
/// #import tybloch: bloch-from-spherical
///
/// #bloch-from-spherical(45deg, 45deg)
/// ```
///
/// -> content
#let bloch-from-spherical(
  /// Theta angle from the Z axis
  /// -> angle
  theta,
  /// Phi angle from the X axis
  /// -> angle
  phi,
  /// Magnitude
  /// -> float
  r: 1,
  /// Color for the state vector
  /// -> color
  state-color: purple,
  /// Whether to show the projection of the state vector on the XY plane.
  /// -> bool
  show-projections: true,
) = {
  _draw-bloch(r * 2, theta, phi, state-color, show-projections)
}


/// Draws the evolution from an initial start vector to a final state.
///
/// *Example*
/// ```example
/// #import tybloch: bloch-state-evolution
///
/// #bloch-state-evolution(
///   (1, 0deg, 0deg),
///   (1, 90deg, 90deg),
///   number-of-shadows: 9,
/// )
/// ```
///
/// -> content
#let bloch-state-evolution(
  /// Initial state as an array of `(r, theta, phi)`
  /// -> array
  initial-state,
  /// Final state as an array of `(r, theta, phi)`
  /// -> array
  final-state,
  /// Number of shadows between initial and final state
  /// -> int
  number-of-shadows: 3,
  /// Color of the state
  /// -> color
  state-color: purple,
) = {
  _draw-bloch(
    ..initial-state,
    state-color,
    false,
    end-state: final-state,
    evolution: true,
    number-of-shadows: number-of-shadows,
  )
}
