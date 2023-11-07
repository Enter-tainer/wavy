#import "@preview/jogs:0.2.0": compile-js, call-js-function

#let wavy-src = read("./wavy.js")
#let wavy-bytecode = compile-js(wavy-src)

#let render(src) = {
  let result = call-js-function(wavy-bytecode, "render", src)
  image.decode(result)
}
