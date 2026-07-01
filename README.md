# tybloch

Draw Bloch spheres using [cetz](https://typst.app/universe/package/cetz) in Typst.

## Usage

The ``bloch-from-spherical`` function plots a single state vector at the given spherical coordinates.

![Example of the output of the bloch-from-spherical function](docs/images/bloch-from-spherical.png)

```typ
#import "@preview/tybloch:0.1.0": bloch-from-spherical

#bloch-from-spherical(
    45deg,
    45deg,
    state-color: purple,
    show-projections: true,
)
```

The ``bloch-state-linear-evolution`` functions shows the evolution between an initial state vector and a final state vector.

![Example of the output of the bloch-state-evolution function](docs/images/bloch-state-linear-evolution.png)

```typ
#import "@preview/tybloch:0.1.0": bloch-state-linear-evolution

#bloch-state-linear-evolution(
    (1, 0deg, 0deg),
    (1, 90deg, 90deg),
    number-of-shadows: 9,
    state-color: purple,
)
```

The ``bloch-state-rotation-evolution`` functions shows the evolution for an initial state vector rotating around a given
rotation axis for a total rotation angle.

![Example of the output of the bloch-state-evolution function](docs/images/bloch-state-rotation-evolution.png)

```typ
#import "@preview/tybloch:0.1.0": bloch-state-rotation-evolution

#bloch-state-rotation-evolution(
  (1, 25deg, 90deg),
  (0deg, 0deg),
  360deg,
  number-of-shadows: 11,
)
```

## Changelog

### 0.1.0

Initial release
