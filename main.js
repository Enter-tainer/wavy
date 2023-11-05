import wavedrom from 'wavedrom';
import def from 'wavedrom/skins/default.js';
import narrow from 'wavedrom/skins/narrow.js';
import lowkey from 'wavedrom/skins/lowkey.js';
import onml from "onml";
import json5 from "json5";

const skins = Object.assign({}, def, narrow, lowkey);

function render(src) {
  if (src === undefined) {
    return;
  }
  const source = json5.parse(src);
  const res = wavedrom.renderAny(0, source, skins);
  const svg = onml.s(res);
  return svg
}

render(undefined) // to keep this function alive
