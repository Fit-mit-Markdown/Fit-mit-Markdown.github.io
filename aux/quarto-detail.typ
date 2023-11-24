%%{init: {'theme': 'dark', 'themeVariables': { 'primaryTextColor': 'white'}}}%%
graph LR
    subgraph .qmd
    AA["Fliesstext (Markdown)"]
    AB[R-Code]
    end
    subgraph ".md (via knitr)"
    AA --> BA["Fliesstext (Markdown)"]
    AB --> BB["Console Outputs (as Markdown)"]
    end
    subgraph ".html (via pandoc)"
    BA --> CA[html-text]
    BB --> CB[Console]
    CC["img"]
    end
    AB --> BC["Plots (.png)"]
    BC --> CC

