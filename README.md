# Note on iOS Programming

## Swift

### Types in Swift

Primitive types of Swift are all **structures**:

* Numbers: Int, Float, Double

* Boolean: Bool

* Text: String, Character

* Collections: Array<Element>, Dictionary<Key: Hashable, Value>, Set<Element: Hashable>

## Views

### Point

Sizes, positions, lines, and curves are always described in points to allow for differences in display resolution.

### Frame

A view's frame is relative to its superview.

### viewDidLoad()

Only trigger once.

## Auto Layout

### Alignment Rectangle

When language is left to right, Leading = Left, Trailing = Right

When language is right to left, Leading = Right, Trailing = Left

Baseline is the font baseline

The alignment rectangle is very similar to the frame. In fact, these two rectangles are often the same. Whereas the frame encompasses the entire view, the alignment rectangle only encompasses the content that you wish to use for alignment purposes.

### Intrinsic Content Size

Intrinsic content size is the size that a view “wants” to be. For labels, this size is the size of the text rendered at the given font. For images, this is the size of the image itself.

A view’s intrinsic content size acts as implicit width and height constraints. If you do not specify constraints that explicitly determine the width, the view will be its intrinsic width. The same goes for the height.

## Others

### Property Observer

Property observers are not triggered when the property value is changed from within an initializer.
