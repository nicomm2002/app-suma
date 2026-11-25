<h1 align="center">Suma app</h1>

<p align="center">
  Prototype test App (compiled MATLAB) that adds 1 to the parameter n1 and saves the sum to a .mat file; the T1w input is not used.
</p>

<p align="center">
  <a href="https://github.com/brainlife/abcd-spec"><img src="https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg" alt="ABCD Spec v1.1"></a>
  <a href="https://doi.org/10.25663/brainlife.app.854"><img src="https://img.shields.io/badge/Brainlife-brainlife.app.854-blue.svg" alt="Run on brainlife.io"></a>
</p>

## At a glance

<!-- brainlife-app:begin (generated from the App manifest; edit the manifest, not this block) -->

> **Prototype test App (compiled MATLAB) that adds 1 to the parameter n1 and saves the sum to a .mat file; the T1w input is not used.**

Course or prototype App for testing brainlife MATLAB packaging. It reads n1 from config.json, computes 1 + n1 and writes out_dir/suma.mat. It does no image processing and should not be used for analysis.

| | |
|---|---|
| **Inputs** | `neuro/anat/t1w` |
| **Outputs** | `raw` |
| **Container** | `brainlife/mcr:r2019a` |
| **Resources** | 1 GB memory · 0.25 h walltime |
| **Run it** | [doi.org/10.25663/brainlife.app.854](https://doi.org/10.25663/brainlife.app.854) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `t1w` | `neuro/anat/t1w` | yes | T1-weighted image (required by the registration but not read by the code). |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `out_dir` | `raw` | suma.mat containing the computed sum. |

<details>
<summary><b>Parameters</b> (1)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `n1` | number | `2` | Number added to 1. |

</details>

<!-- brainlife-app:end -->

## Running the App

### On brainlife.io

Open the App at [doi.org/10.25663/brainlife.app.854](https://doi.org/10.25663/brainlife.app.854), choose `neuro/anat/t1w` from your project, set the parameters and press **Execute**. The results are saved to your project as `raw`.

### Locally

You need [Singularity/Apptainer](https://apptainer.org/) (the App runs in `brainlife/mcr:r2019a`), [`jq`](https://jqlang.github.io/jq/).

1. Clone this repository.
2. Create `config.json` with the paths to your inputs and the parameters:

   ```json
   {
       "t1": "/path/to/t1w/t1",
       "n1": 2
   }
   ```

3. Run `./main`.

## Citing

If you use this App, please cite it, the software it builds on and brainlife.io:

- Suma app. brainlife.io App. [doi:10.25663/brainlife.app.854](https://doi.org/10.25663/brainlife.app.854)
- Hayashi S, Caron BA, Heinsfeld AS, et al. brainlife.io: a decentralized and open-source cloud platform to support neuroscience research. *Nature Methods* 21:809–813 (2024). [doi:10.1038/s41592-024-02237-2](https://doi.org/10.1038/s41592-024-02237-2)
- Avesani P, McPherson B, Hayashi S, et al. The open diffusion data derivatives, brain data upcycling via integrated publishing of derivatives and reproducible open cloud services. *Scientific Data* 6:69 (2019). [doi:10.1038/s41597-019-0073-y](https://doi.org/10.1038/s41597-019-0073-y)

## Authors

Maintained by [@nicomm2002](https://github.com/nicomm2002).
