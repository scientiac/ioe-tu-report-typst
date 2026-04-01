// letterpad.typ - Tribhuvan University IOE Letter of Approval Letterhead Template

#let letterpad(
  body
) = {
  // Page setup
  set page(
    paper: "a4",
    margin: (top: 1.5cm, bottom: 2cm, left: 2cm, right: 2cm),
  )

  set text(font: "Libertinus Serif", size: 12pt)

  // Header section - Logo on left, text left-aligned beside it
  {
    let navy = rgb("#1a237e")
    let dept-blue = rgb("#0d47a1")

    grid(
      columns: (80pt, auto),
      align: (left + horizon, left + horizon),
      gutter: 25pt,

      // TU Logo
      [
        #image("logo.png", width: 90pt)
      ],

      // Text - left aligned, Nepali and English alternating
      [
        #text(font: "Noto Sans Devanagari", 11pt, weight: "bold", fill: navy)[त्रिभुवन विश्वविद्यालय] \
        #text(font: "Libertinus Serif", 12pt, weight: "bold", fill: navy)[Tribhuvan University] \
        #text(font: "Noto Sans Devanagari", 10pt, fill: navy)[इन्जिनियरिङ अध्ययन संस्थान] \
        #text(font: "Libertinus Serif", 11pt, weight: "bold", fill: navy)[Institute of Engineering] \
        #text(font: "Noto Sans Devanagari", 10pt, fill: navy)[पूर्वाञ्चल क्याम्पस] \
        #text(font: "Libertinus Serif", 11pt, weight: "bold", fill: navy)[Eastern Region Campus] \
        #text(font: "Noto Sans Devanagari", 14pt, weight: "bold", fill: dept-blue)[इलेक्ट्रोनिक्स तथा कम्प्युटर विभाग] \
        #text(font: "Libertinus Serif", 13pt, weight: "bold", fill: dept-blue)[Department of Electronics & Computer Engineering]
      ],
    )
  }

  v(5pt)
  line(length: 100%, stroke: 1.5pt + black)
  v(-8pt)

  // Reference number row
  grid(
    columns: (1fr, 1fr),
    align: (left, right),
    [
      #set text(font: "Noto Sans Devanagari", size: 10pt)
      पू.क्या.फा.नं. (#h(15pt)) च. न
    ],
    []
  )

  v(10pt)

  // Main body content
  body
}
