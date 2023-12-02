#import "./typst-package/lib.typ": render as wavy-render
// Uncomment the following line to use the wavy from the official package registry
// #import "@preview/wavy:0.1.1": render as wavy-render
#set page(height: auto, width: auto, fill: black, margin: 2em)
#set text(fill: white)

#show raw.where(lang: "wavy"): it => wavy-render(it.text, width: 20cm)

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
