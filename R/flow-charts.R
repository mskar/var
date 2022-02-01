f1 <- DiagrammeR::mermaid("
graph TB
D[FASTA files]-- Minimap2 --> E[VCF data]
E -- SnpEff & SnpSift --> F[Annotated VCF data]
F -- pandas.read_csv & pandas.pivot --> G[Wide dataframe]
A[JSON files] -- json.load --> B[Patient metadata dictionary]
B -- pandas.join --> C[Modeling Data]
G -- pandas.join --> C
")

DiagrammeR::export_graph(f1, file_name = "flow-chart1.png")
f1

f2 <- DiagrammeR::mermaid("
graph TD
A[Download USAFSAM Sequences from GISAID] --> B[Align and call variants]
B --> C[Variant Scoring]
D[Variants from Voss et al. with data for prediction] --> C
C --> E[Sequence matrix for predictions]
E --> F[Classify by predicted severity]
F --> H[T-test: Mild vs. Severe <br> Correlation: PCR vs. probability]
G[Gather diagnostic PCR data for samples] --> H
")

f2