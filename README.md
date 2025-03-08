The best Squircle implementation thus far but wrapped in a platform aware variant

## Source / Stimulus

- Normal rounded rectangles look weird and bad on iOS
- Existing solutions are slow, not platform aware, are low fidelity, or don't handle both squircle rectangle and pill shapes
- Squircles are important details, not fussy details
- https://github.com/rydmike/squircle_study/tree/master
- https://x.com/luke_pighetti/status/1898421066285854727

## Promises

- Fidelity and performance will be decent, not perfect, but the best available
- We will provide platform aware stadium (pill) and rounded rectangle shapes
- It will be maintained until Flutter lands first class superellipse shapes
- It will not be infinitely adjustable (see `figma_squircle` for that)
