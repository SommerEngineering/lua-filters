# Figure Numbering Pandoc Filter
This filter can be used to number all figures in a document in ascending order.

## Example in a Markdown File
Obviously it is necessary that the document contains some figures. In the following example, two PlantUML diagrams are inserted using another filter:

```{.plantuml caption="This is my first diagram. The Figure Numbering Filter will change this caption and adds the prefix 'Figure' with a number."}
@startuml
Alice -> Bob: Authentication Request Bob --> Alice: Authentication Response
Alice -> Bob: Another authentication Request Alice <-- Bob: another authentication Response
@enduml
```

And a second figure:

```{.plantuml caption="This is my second diagram."}
@startuml
A - B
@enduml
```

## Run pandoc
In order to run this filter, you have to add some images. In case of this example, we have to enable the PlantUML filter first. Please notice, that the order of the lua filters on the pandoc command line is important! The filters are processed from left to right. Therefore, in this example, we had to mention the PlantUML filter first and the figure numbering filter second.

```
pandoc --self-contained --lua-filter=../plantuml/plantuml.lua --lua-filter=figure-numbering.lua --metadata title=README readme.md -o output.html
```

## Tests
This script was tested with Markdown to html and Microsoft Word on a Microsoft Windows environment!
