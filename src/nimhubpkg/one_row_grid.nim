import karax / [karax, karaxdsl, vdom, kdom, compact]
import jsffi
import jsconsole
import ./video

type OneRowGrid* = ref object of VComponent
  data*:seq[JsObject]

proc render(x: VComponent):VNode =
  let self = OneRowGrid(x)
  result = buildHtml(tdiv(class="pure-g stretch")):
    if self.data.len > 0:
      for i in countup(0,5):
        tdiv(class="pure-u-4-24"):
          renderVideo(self.data[i])
    else:
      tdiv()

proc oneRowGrid*(nref:var OneRowGrid): OneRowGrid =
  if nref == nil:
    nref = newComponent(OneRowGrid, render)
    nref.data = newSeq[JsObject]()
    nref
  else:
    nref