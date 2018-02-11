<p align="center" >
	<img src="/Images/logo_2048_2048.png" alt="Circle" title="Circle" width="300px" height="300px">
</p>

<p align="center">
	<a href="https://swift.org">
		<img src="https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat">
	</a>
	<a href="https://cocoapods.org">
		<img src="https://img.shields.io/cocoapods/v/Circle.svg">
	</a>
	<a href="https://cocoapods.org">
		<img src="https://img.shields.io/cocoapods/dt/Circle.svg">
	</a>
	<a href="https://tldrlegal.com/license/mit-license">
		<img src="https://img.shields.io/badge/License-MIT-blue.svg?style=flat">
	</a>
</p>

# Circle

Simplifies `UIImageView` animations via set of classes and extensions.

## How To Get Started

- Copy content of `Source` folder to your project.

or

- Use `Circle` cocoapod

## Requirements

* iOS 9 and later
* Xcode 9 and later
* Swift 4

## Usage

Let's assume, you have set of images in your Xcode project and you'd like to use them for playing animation within `UIImageView` instance. How this could be done with normal `UIKit` approach:

```swift
imageView.animationImages = [
    UIImage(named: "image_1")!,
    UIImage(named: "image_2")!,
    UIImage(named: "image_3")!,
    UIImage(named: "image_4")!,
    UIImage(named: "image_5")!,
    UIImage(named: "image_6")!,
    UIImage(named: "image_7")!,
    UIImage(named: "image_8")!,
    // etc.
]

imageView.animationDuration = 1
imageView.animatedImageView.animationRepeatCount = 1000
imageView.animatedImageView.startAnimating()
```

With `Circle` library you can implement the same behavior by using these lines:

```swift
imageView.crl
    .prefix("image_")
    .from(1)
    .to(8)
    .duration(1)
    .repeatCount(1000)
    .start()
```

If images are stored in another bundle, simply mention it by using `bundle` method:

```swift
imageView.crl
    .bundle(Bundle(identifier: "com.test.SomeBundle"))
    .prefix("image_")
    .from(1)
    .to(180)
    .duration(1)
    .repeatCount(3)
    .start()
```

All methods support call chains, so you can save reference to `AnimationManager` object and use it to stop animation later:

```swift
let animationManager = imageView.crl
    .prefix("image_")
    .from(1)
    .to(240)
    .duration(4)
    .repeatCount(1000)
    .start()

animationManager.stop()
```

## License

`Circle` is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
