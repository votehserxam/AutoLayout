## Installation
For now you're able to clone repo in your project or download ZIP folder manually.
```
git clone https://github.com/votehserxam/AutoLayout.git
```


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

> Notice that `left and right` actually mean `leading and trailing`, so no need to keep in mind RTL anymore, it just works. Also don't need to add minus to `bottom` and `right` offsets.

Width and height constraints are defined in the same old ways like `.equalToConstant(100)` or `.equalTo(someView.width)`, but with more options and combinations.


### How to fit one view in another?
If you need to fit one view into another, there is a solution...

```Swift
// Matching one view with another and making offset from edges.
thisView.match(
    view: thatView,
    offset: .init(
        top: 40,
        bottom: 40
    )
)

// Just matching superview.
thisView.matchSuperview()
```

### How to center views?
It's only necessary to specify view in which another view will be centered and its size.

```Swift
// Also you can define offset from center.
thisView.center(
    in: thatView,
    width: .equalTo(thatView.width),
    height: .equalToConstant(120),
    yOffset: 12
)

// Also possible to center in superview.
thisView.centerInSuperview()
```

> Notice that if you don't specify `width` or `height` values in `centerInSuperview()`, it will be taken as a superview's size values.
