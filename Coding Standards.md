# Coding Standards
[Back to Slides & Excercises](bear://x-callback-url/open-note?id=9D123EEA-A4C1-4FB1-A6D6-7F909223CB58-11129-0000690EBDA0A5CF)
- - - -
## Fundamentals
**Clarity at the points of use:** Properties, Methods etc. should be declared once, and be reused where needed.

**Clarity > Brevity:** All developers like to keep naming of methods_variables_classes etc. to a low use of characters, and may seem obvious for them, but usually introduce side-effects for others, who may get confused. Use concise and exact use of words for the specific entity

**Write Documentation:** for larger complexity projects, write documentation for every declaration, insights might be needed for other developers to understand. Depending on which language you are writing in, use its correct documentation process i.e. JavaDoc for java, in this case Use Swift’s [dialect of Markdown](https://developer.apple.com/library/content/documentation/Xcode/Reference/xcode_markup_formatting_ref/) .

* Whitespaces:
	* Tabs, **NOT** Spaces
	* End files with a newline

## Naming
**Avoid Ambiguity:** for a person reading code where the name is used.
**Leave out needless words:** Every word in a name, should be related to its process. Name _Variables, Parameters and types_ according to their roles
```
var string = “Hello” ❌
var greeting = “Hello” ✅
```
**Compensate for Weak type:** to clarify a parameters role

```
func add(_ observer: NSObject, for keyPath: String)❌
func addObserver(_ observer: NSObject, forKeyPath: String)✅
```

**Avoid Obscure Terms**: Dont say “Epidermis” if “Skin” will serve the purpose. 

**Avoid Abbreviations:** Especially non-standard ones, in any case, any abbreviation you use should be found by a web search

## Conventions
**Document any property that is not O(1):** Be sure to _alert_ anyone when that assumption is violated

**Follow case conventions:** Names of types and protocols are `UpperCamelCase`. Everything else is `lowerCamelCase`

**Methods can share a base name:** If methods have the same meaning/process give them the same base name, but wither different parameters

```
func add(_ other: Point)`✅
func add(_ other: Shape)`✅
```
```
//Rebuilds database search index
func search() {...}❌
//Returns the n'th row
func search(n: Int) {...}❌
```

### Parameters
**Names to serve Documentation:**Choose these names to make documentation easy to read. For example, these names make documentation read naturally:
```
//Return an Array containing the element, that satifsfies the 'predicate'
func filter(_ predicate: Element)
```

**Argument Lables:**
func move(**from** start: Point, **to** end: Point)
`x.move(from: x, to: y)`

	* Leave out labels when they can’t be distinguished:
		* `min(number1, number2)`


## Code specific
**Return and break early:** When you have to meet certain criteria to continue execution, instead of this:
```
if n.isNumber {
	//use n here
} else {
	return
}
```
use this:
```
guard n.isNumber else {
	return
}
//use n here
```

**Prefer** `let` **bindings over** `var` **bindinds wherever possible:**
`let foo = ...`  over `var foot = ...`  and when in doubt. _ONLY_ use var if you absolutely have to, i.e. the value might change.

a `let` binding  guarantees and clearly signals the programmer that its value will never change. It becomes easier to reason about code.

If `var` binding/identifier is used, assume that it will be changed and ask yourself why, and _document_ it

**Only explicitly refer to** `self` **when required**

## Overall Structure
```
// instance fields, categorized by usage and type

// Constructors, sorted by parameter count or similarities

// Methods, seperate by encapsulation

// If extensions are needed, provide them in a seperate file
```		
		
