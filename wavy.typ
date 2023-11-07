#import "@local/jogs:0.2.0": *

#set page(height: auto, width: auto, fill: black, margin: 2em)
#set text(fill: white)

#let wavy-src = read("./dist/wavy.js")
#let wavy-bytecode = compile-js(wavy-src)

#let render(src) = {
  let result = call-js-function(wavy-bytecode, "render", src)
  image.decode(result)
}

#show raw.where(lang: "wavy"): it => render(it.text)

= Wavy

Typst, now with waves.

```wavy
{
  signal:
  [
    {name:'clk',wave:'p......'},
    {name:'bus',wave:'x.34.5x',data:'head body tail'},
    {name:'wire',wave:'0.1..0.'}
  ]
}
```

```js
{
  signal:
  [
    {name:'clk',wave:'p......'},
    {name:'bus',wave:'x.34.5x',data:'head body tail'},
    {name:'wire',wave:'0.1..0.'}
  ]
}
```
