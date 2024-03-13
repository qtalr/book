---
execute:
  echo: true
---



# Contribute {#sec-contributing}






::: {.callout-caution title="Caution"}
Under development.
:::

> The reproducibility of studies and the ability to follow up on the work of others is key for innovation in science and engineering.
>
> --- Leland Wilkinson

::: {.callout}
**{{< fa regular list-alt >}} Outcomes**

<!-- Remember and understand verbs: https://tips.uark.edu/blooms-taxonomy-verb-chart/ -->

- Identify the aims of audience-oriented and research-oriented communication
- Understand the overlapping and distinct elements and goals of research presentations and articles
- Comprehend the importance of and pinpoint the aspects of well-documented and reproducible research
:::

We have discussed the design and implementation of research that is purposive, inquisitive, informed, and methodical. Now, we turn to the task of sharing research results in a manner that is communicable. There are two primary ways to communicate the results of research: audience-oriented and research-oriented. Audience facing research communication includes presentations, articles, and other forms of dissemination that are intended for audiences to become familiar with the research. Research-facing communication, on the other hand, targets other researchers, often working in same field, and focuses on the more technical aspects such as data, code, and documentation that enable other researchers to reproduce and/ or build upon the research. In this chapter, we will cover both aspects of research communication, providing guidelines for effective research reporting and strategies to ensure the reproducibility of your research project.

::: {.callout}
**{{< fa terminal >}} Lessons**

**What**: [Computing environment](https://github.com/qtalr/lessons)\
**How**: In an R console, load `swirl`, run `swirl()`, and follow prompts to select the lesson.\
**Why**: To interact with the R package `renv` and learn how to manage package versions in a research project.
:::

## Audience oriented {#sec-contr-audience-oriented}

Dissemination of research findings is a critical part of the research process. Whether it is through presentations, articles, blog posts, or social media, the ability to effectively communicate the results of research is essential for the impact and dissemination of research. Furthermore, the act of composing a research document can help to develop and refine ideas and conclusions.

The two most common forms of research dissemination in academics are presentations and articles. Both share a common goal: to effectively communicate the research to an audience. However, they also have distinct purposes and require different approaches to achieve their goals. These purposes complement each other, with presentations often serving as a means to engage and elicit feedback from an audience, and articles serving as a more comprehensive and permanent record of the research.

### Structure {#sec-contr-ao-structure}

First, let's focus on the structural elements that appear in both research presentations and articles. The components in @tbl-c-common-components reflect the typical structure for presenting research in the social sciences [@Gries2016; @Gries2020; @Sternberg2010]. Their combined purpose is to trace the research narrative from the rationale and goals to connecting the findings with the research questions and aims.

| Component | Purpose |
|-----------|---------|
| Introduction | Provide context and rationale based on previous research |
| Methods | Describe the research design and procedures |
| Results | Present the findings including key statistics and table and/ or visual summaries |
| Discussion | Interpret the findings and discuss implications |
| Conclusion | Summarize the research and suggest future work |

: Common components of research presentations and articles {#tbl-c-common-components tbl-colwidths="[20, 80]"}

When research is connected to a well-designed plan, as described in @sec-framing-research, many of these components are already in place. The steps taken to identify an area and a problem or gap in the literature find themselves in the introduction. This section builds the case for the research and provides the context for the research question(s) and aim(s). The methods section describes the research design and procedures, including the data collection and analysis steps that are key to contextualize the findings. In the results section, the findings are presented in the appropriate manner given the research aim and the analysis performed.

The discussion and conclusions sections, however, are where the research narrative is brought together. Crafting these sections can be seen as an extension of the research process itself. Instead of elaborating on the planning steps and their implementation, the discussion focus on the interpretation of the findings in the light of the research questions and previous literature. At this stage, the act of articulating the implications of the findings is where deeper insights are developed and refined. The conclusion, for its part, puts a finer point on the research goal and main findings, but also is an opportunity to extend suggestions to where subsequent research might go.

The research abstract is another important component of both presentations and articles. I have not included it in @tbl-c-common-components as it is a distillation of the entire research narrative. Furthermore, the purpose of the abstract is distinct between presentations and articles. In presentations, the abstract typically serves to provide conference referees and attendees with a summary of the research. In articles, the abstract helps readers decide whether the article is relevant to their interests and worth the time to read in full.

### Purpose {#sec-contr-ao-purpose}

<!--
Discuss the distinctive elements of research presentations, including storytelling and relatability, the "less is more" approach, visual aids and interactive elements, and engaging the audience through questions or interactive elements
-->

Understanding the roles the structural elements play in contributing to the overall narrative is essential for effective research communication. Yet, presentations and articles are not the same. They have distinct goals which are reflected in the emphasis that each communication channel places on particular narrative elements and the level of detail and nuance that is included in the narrative.

It is likely not a surprise that articles are more detailed and nuanced than presentations. But what is sometimes overlooked is that presentations should emphasize storytelling and relatability, over nuance and detail. Sure, the research should be accurate and reliable, but the focus is on engaging the audience and making the research relatable. No matter how much detail you provide in a presentation, there will likely be questions and feedback that will require further explanation. A "less is more" approach is a good rule of thumb for presentations.

Tabular and visual summaries are key to convey complex findings, regardless of the mode of communication. However, in presentations, the use of visual aids is especially effective for engaging the audience as the visual modality does not compete with the spoken word for attention. Along these lines, limiting the amount of text on slides and increasing natural discourse with the audience is a good practice. Your presentation will be more engaging leading to more questions and feedback that you can use to refine your current or to seed future research.

The purpose of an article is to provide a comprehensive record of the research. In this record, the methods and results sections are particularly significant. The methods section should provide the reader with the necessary information to understand the research design and procedures and to evaluate the findings, as it should in presentations, but, in contrast to presentations, it should also speak to researchers providing the details required to reproduce the research. These details summarize and, ideally, point to the data and code that are used to produce the findings in your reproducible research project.

The results section, for its part, should present the findings in a manner that is clear and concise, but also comprehensive. The research aim and the analysis performed will determine the appropriate measures and/ or summaries to use. @tbl-c-results-summaries outlines the key statistical results, tables, and visualizations that are often included in the results section for exploratory, predictive, and inferential analyses.

| Research aim | Statistical results | Summaries |
|---------------|-------------------------|--------|
| Exploratory | Descriptive statistics | Extensive use of tables and/ or visualizations |
| Predictive | Descriptive statistics, model performance metrics | Tables for model performance comparisons and/ or visualizations for feature importance measures |
| Inferential | Descriptive statistics, hypothesis testing confidence metrics | Tables for hypothesis testing results and/ or visualizations to visualize trends |

: Key statistical results, tables, and visualizations for research results {#tbl-c-results-summaries tbl-colwidths="[17, 35, 48]"}

By and large, the results section should be a descriptive and visual summary of the findings as they are, without interpretation. The discussion section is where the interpretation of the findings and their implications are presented. This general distinction between the results and discussion may be less pronounced in exploratory research, as the interpretation of the findings may be more intertwined with the presentation of the findings given the nature of the research.

### Strategies {#sec-contr-ao-strategies}

Up to this point, we have discussed the structural elements and the purpose of research presentations and articles. Now, let's turn to the practical strategies for creating effective research presentations and articles.

Strong research write-ups begin with well-framed and well-documented research plans. The steps outlined in @sec-framing-research are the foundation for the various elements of the research narrative. Furthermore, you can further prepare for the research write-up by leaving yourself a breadcrumb trail along the way.

The introduction includes the rationale, goals, and research questions and aims. These components are directly connected to the primary literature that you consulted. For this reason, it is a good practice to keep a record of the literature that you consulted and the notes that you took. This record will help you to trace the development of your ideas and to provide the necessary context for your research. A reference manager, such as Zotero, Mendeley, or EndNote, is a good tool for this purpose. These tools allow you to manage your ideas and keep notes, organize your references and resources, and integrate your references and resources with your writing in Quarto through BibTeX entry citation keys.

Similarly, if you are following best practices, you will have documented your data, processing steps, and analysis choices while conducting your research. The methods section stems directly from these resources. Data origin files provide the necessary context for the data that you used in your research. Data dictionary files clarify variables and values in your datasets. Literate programming, as implemented in Quarto, can further provide process and analysis documentation.

The results section can also benefit from some preparation. The key statistical results, tables, and visualizations generated in your process script for the analysis should be saved as outputs. This provides a more convenient way to include these results in your research document(s). If you are using a project structure similiar to the one outlined in @sec-fr-scaffold, you can write statistical results as R objects using `saveRDS()`, and write tables and visualizations as files using `kableExtra::save_kable()` and `ggplot2::ggsave()`, respectively, to the corresponding *outputs/* directory. This will allow you to easily access and include these results in your research document(s) to avoid having to recreate the analysis steps from a dataset or manually copy and paste results from the console, which can be error-prone and is not reproducible.

::: {.callout .halfsize}
**{{< fa regular hand-point-up >}} Tip**

The `qtkit` package provides three functions for writing R objects, ggplot2 objects, and kable objects to a given directory. These functions are `write_obj()`, `write_gg()`, and `write_kbl()`, respectively. These functions also provide functionality to automatically name the output files based on the label of the code block in which they are called to make it easier to connect the output to the code that generated it. For more information, see the [qtkit documentation](https://qtalr.github.io/qtkit/).
:::

At this point we have our ducks in a row, so to speak. We have a well-documented research plan, a record of the literature that we consulted, and a record of the data, processing steps, and analysis choices that we made. We have also saved the key statistical results, tables, and visualizations that we generated in our process script for the analysis. Now, we can begin to write our research document(s).

::: {.callout .halfsize}
**{{< fa medal >}} Dive deeper**

Quarto 1.4+ includes a 'manuscript' feature which provides a workflow for including source content, computations, and visualizations in a single document which links to these source documents. For more information, see the [Quarto documentation](https://quarto.org/docs/manuscripts/).
:::

Although there are many tools and platforms for creating and sharing research presentations and articles, I advocate for using Quarto to create and share both. First, Quarto documents fit squarely into a reproducible workflow, as we have seen throughout this textbook. Secondly, using Quarto for both presentations and articles allows for a seamless transition between the two. This is particularly useful when you are presenting research that you have written about in an article, or vice versa. The statistical results, tables, and visualizations that you saved as outputs can be easily included in both presentations and articles seamlessly. Third, changes in your research process will naturally be reflected in your write-ups. This helps maintain the fidelity of your research across the various stages of the research process, including write-ups. Finally, Quarto provides a variety of output formats, including PDF, HTML, and Word, which are suitable for sharing research presentations and articles. These documents can be shared on various platforms, including GitHub pages, and can be easily converted to other formats. Quarto also provides a styles for citations and bibliographies and a variety of extensions for journal-specific formatting, which can be useful for publishing articles in specific venues.

## Research oriented {#sec-contr-research-oriented}

Whether for other researchers or for your future self, creating research that is well-documented and reproducible is a fundamental part of conducting modern scientific inquiry. In this section, we will emphasize the importance of this endeavor and outline strategies for ensuring your research project is reproducible. This will include directory and file structure, key documentation files as well as how to effectively use existing software resources and frameworks for publishing your research.

- Importance of well-documented and reproducible research in modern scientific inquiry
  - Ensuring accuracy and reliability of results
  - Facilitating knowledge sharing and collaboration
    - Combining expertise from different fields.
    - Peer review and feedback.
  - Enhance the visibility and impact of research

### Structure {#sec-contr-ro-structure}

- Research compendium
  - Using literate programming for transparency and documentation
  - Directory and file structure/ naming conventions
  - Modularization of scripts and files for specific analysis goals
  - Key documentation files: README, data origin, and data dictionaries
  - Implementing a 'main' script for coordinating project steps
- Computing environment
  - Directory and file management
    - Open source formats, software, and tools
    - Version control
      <!-- - Tracking changes and collaboration
      - Ethical considerations (data privacy, security, etc.)
        - `.gitignore` for sensitive data -->
  - Software management
    - R and package management (`renv`)
  - System-level dependencies
    - Docker (or `rix`) for containerization

### Purpose {#sec-contr-ro-purpose}

- Research compendium
  - Transparency and documentation
  - Reproducibility and sharing research findings
  - Facilitating collaboration and peer review
  - Enhancing the visibility and impact of research
- Computing environment
  - Ensuring accuracy and reliability of results
  - Facilitating knowledge sharing and collaboration
  - Enhancing the visibility and impact of research

### Strategies {#sec-contr-ro-strategies}

- Research compendium

- Computing environment

- Publishing research
  - Popular repositories (e.g., GitHub, Open Science Framework)
  - Strategies for uploading and organizing research projects
  - Collaboration best practices
    - GitHub branches and pull requests
    - Code review and feedback (Issues, Discussions, etc.)
    - Licensing and citation attribution (appropriate licenses for code and data to ensure proper attribution and reuse)

## Activities {.unnumbered}

::: {.callout}
**{{< fa regular file-code >}} Recipe**

<!-- Understand, apply, and analyze verbs: https://tips.uark.edu/blooms-taxonomy-verb-chart/ -->

**What**: [Manage project and computing environments](https://qtalr.github.io/qtalrkit/articles/recipe-11.html)\
**How**: Read Recipe 11, complete comprehension check, and prepare for Lab 11.\
**Why**: To follow the steps for managing a research project and computing environment for effective communication and reproducibility.
:::

::: {.callout}
**{{< fa flask >}} Lab**

<!-- Analyze, evaluate, and create verbs: https://tips.uark.edu/blooms-taxonomy-verb-chart/ -->

**What**: [Future-proofing research](https://github.com/qtalr/lab-11)\
**How**: Clone, fork, and complete the steps in Lab 11.\
**Why**: To apply the strategies for ensuring that your research project is reproducible.
:::

## Summary {.unnumbered}

In this chapter, we have discussed the importance of clear and effective communication in research reporting, and the strategies for ensuring that your research project is reproducible. We have discussed the role of research presentations in academic and professional settings, highlighting the benefits of presenting one's work as a means to develop and refine ideas and conclusions. We then discussed the purpose of a research document, focusing on how its structure effectively conveys the project's rationale, goals, procedures, results, and findings. We also emphasized the importance of well-documented and reproducible research in modern scientific inquiry and outlined strategies for ensuring your research project is reproducible. This included directory and file structure, key documentation files as well as how to effectively use existing software resources and frameworks for publishing your research.


<!--


Lesson:

- Using `renv` for package management in a research project
  - Motivation/ problem
    - R package versions change over time
      - Introduces reproducibility issues
    - It would be nice to keep the same versions of packages that worked for a project.
    - CRAN keeps historical snapshots of packages by their version
    - `renv` is a package that helps manage package installation by versions
  - `renv` basics
    - Concepts: lockfile, snapshot, restore
  - `renv` in a research project
    - Initializing `renv` in a research project
    - Adding and removing packages
    - Snapshotting and restoring the environment


-->





<!--

Further reading:

- @Rodrigues2023
- @Gandrud2020
- @Blischak2019
- @Gentleman2007
- @Munafo2017
- Gries and Paquot (2020) "Writing up a corpus linguistic paper" DOI: 10.1007/987-3-030-46216-1

-->

