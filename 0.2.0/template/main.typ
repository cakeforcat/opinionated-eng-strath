#import "@local/opinonated-eng-strath:0.2.0": *

#show: strathy.with(
  title: "Big Important Project",

  //takes in a list of dicts (name: full_name, reg: registration_number)
  authors: (
    (name: "Joe Bloggs", reg: "205012345"),
    (name: "Bloe Joggs", reg: "205012346"),
  ),
  
  declaration: [
  We confirm and declare that this report and the project work is entirely the product of our own efforts and We have not used or presented the work of others herein without acknowledgment
  ],

  abstract: [
    This is a space for the abstract you can also do this lol \
    #lorem(300)
  ],
  
  subtitle: [
  19520 5th year project \
  Department of Electronic and Electrical Engineering \
  University of Strathclyde, Glasgow
  ],
  
  // date: [your custom date]
  //default is datetime.today().display("[day] [month repr:long] [year]")
  
  // whether to gen a list of figs
  figures: true,
  
  // special space for the glossary, if using a glossary manager
  //glossary: [#print-index(title: "Definitions")],
  
  // whether to generate the typst ack at the bottom
  ack: true,

  // compact layeout for assignments, set to false for more "grandeur"
  compact: false
)

// body


= Figures & tables
// table titles at the top if you like it that way
#show figure.where(
  kind: table
): set figure.caption(position: top)


#figure(image("strath.svg", width: 45%), caption: [example figure]) <example_image>

#figure(table(
  columns: 2,
  
  [*Amount*],   [*Ingredient*],
  [360g],       [Baking flour],
  [250g],       [Butter (room temp.)],
  [150g],       [Brown sugar],
  [100g],       [Cane sugar],
  [100g],       [70% cocoa chocolate],
  [100g],       [35-40% cocoa chocolate],
  [2],          [Eggs],
  [Pinch],      [Salt],
  [Drizzle],    [Vanilla extract],
  
), caption: [example table])
= Code listings

#figure(sourcecode[```C
example_c_code() =
example_c_code() = 
example_c_code() = 
example_c_code() = 
example_c_code() = 
```], caption: [code listing])

#show bibliography: set heading(numbering: "1")
#bibliography("references.bib")

