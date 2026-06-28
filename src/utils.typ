#import calc: acos, cos, pow, sin, sqrt

/// Converts spherical coordinates into cartesian coordinates
///
/// -> array
#let spherical-to-cartesian(
  /// The magnitude
  /// -> float
  r,
  /// Theta angle from the Z axis
  /// -> angle
  theta,
  /// Phi angle from the X axis
  /// -> angle
  phi,
) = {
  let x = r * sin(theta) * cos(phi)
  let y = r * sin(theta) * sin(phi)
  let z = r * cos(theta)
  (x, y, z)
}


/// Converts cartesian coordinates into spherical coordinates
///
/// -> array
#let cartesian-to-spherical(
  /// -> float
  x,
  /// -> float
  y,
  /// -> float
  z,
) = {
  let r = sqrt(pow(x, 2) + pow(y, 2) + pow(z, 2))
  let theta = acos(z / r)
  let phi = y.signum() * acos(x / sqrt(pow(x, 2) + pow(y, 2)))
  (r, theta, phi)
}

#let linspace(start, end, num) = {
  if num <= 1 { return (start,) }
  let step = (end - start) / (num - 1)
  range(num).map(i => start + i * step)
}
