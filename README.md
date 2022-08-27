## Installation
For now you're able to download ZIP folder manually and insert it into your project.


## Usage
### All in one
Setup constraints in one place by adding all layout anchors that you need.

```Swift
thisView.constraints(
    top: thatView.safeArea.top,
    left: thatView.left(20),
    right: thatView.right(20),
    height: .equalToConstant(180)
)
```

All layout anchors properties are available in shorten form:
- `top`
- `left`
- `bottom`
- `right`
- `centerX`
- `centerY`
- `firstBaseline`
- `lastBaseline`
- `width`
- `height`

> Notice that `left and right` actually mean `leading and trailing`, so if you need to implement RTL, it will just work. Also now you don't need to add minus to `bottom` and `right` offsets.

Width and height constraints are defined in the same old ways like `.equalToConstant(100)` or `.equalTo(someView.width)`, but with more options and combinations.


### Just fit
It might be that you just need to fit one view into another and there is a solution...

```Swift

// If you need to match one view with another and make offset from edges.
thisView.match(
    view: thatView,
    offset: .init(
        top: 40,
        bottom: 40
    )
)

// If you just need to match superview.
thisView.matchSuperview()
```
### Center everything
Same principle as a `match` function, but now it's necessary to define view's size.

```Swift

// If you need to center some view in another with offset.
thisView.center(
    in: thatView,
    width: .equalTo(thatView.width),
    height: .equalToConstant(120),
    yOffset: 12
)

//  Also it's possible to center in superview
thisView.centerInSuperview()
```
> Notice that if you don't specify `width` or `height` values in `centerInSuperview()`, it will be taken as a superview's size values.
