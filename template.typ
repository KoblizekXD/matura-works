#let work(
  title: "Jméno díla",
  author: "Autor",
  year: 2023,
  about-author: [],
  literary-context: [],
  characteristics: [],
  plot-and-motifs: [],
  additional-info: [],
) = {
  set page(
    height: auto,
    margin: (
      left: 2cm,
      right: 2.5cm,
      top: 1cm,
      bottom: 3cm,
    ),
  )
  set text(font: "New Computer Modern")
  show heading.where(level: 1): set text(size: 20pt, weight: "bold")
  show heading.where(level: 2): set text(size: 16pt, weight: "bold", fill: red)
  show heading.where(level: 3): set text(size: 14pt, weight: "bold", fill: red)
  place(
    top + left,
    scope: "parent",
    float: true,
    {
      [
        = #title
        *#author* | *#year*

        == Literární kontext

        #literary-context

        == Charakteristika díla

        #characteristics

        == Děj a motivy

        #plot-and-motifs

        == Autor

        #about-author

        === Dodatečné údaje o díle

        #additional-info
      ]
    },
  )
}
