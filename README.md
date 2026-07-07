# YXT-Formalization

**Formalization of YuanXian Theory (YXT) in Lean 4 and Rocq (Coq)**

Self-Referential Mind-Field Type Theory (YXTT) and ZFC Extension.

## Overview

This repository provides machine-verified formalizations of the core axioms and derivations of **YuanXian Theory (YXT)**, with a strong focus on the **True Circle Self-Consistency Law (TCSC)** system.

It implements dual realizations:
- **Lean 4**: Primary engine for automated proofs, high-dimensional topology, and iterative self-reference.
- **Rocq (Coq)**: For rigorous axiomatic foundations.

## Supported Papers

This repository supports the following papers (code and supplementary materials are organized under `papers/` and corresponding `lean/` / `coq/` subdirectories):

1. **True Circle Self-Consistency Law (TCSC) System: Logical Completeness and Universal Derivation Verification**  
   - Author: Zhenyuan Acharya (真圆阿奢黎)  
   - Date: June 2026  
   - DOI: [10.5281/zenodo.20929778](https://doi.org/10.5281/zenodo.20929778)
   - **Main focus of this update**: Full Lean 4 proof of TCSC completeness (`tcsc_completeness`), STM/SRM/FSC derivations, T⁶⁴ topology, and axiom independence.  
   - Location: `papers/TCSC_Completeness/`, `lean/TCSC/`

2. **From Philosophical Program to Formal Science: The Complete Axiomatization, Dual Realization and Machine Verification of YuanXian Theory (YXT)**  
   - DOI: [10.5281/zenodo.19965180](https://doi.org/10.5281/zenodo.19965180)  
   - Core reference paper for the overall repository structure.

3. **Normal Mode Quantization on T⁶⁴: Based on the YuanXian Living Organism Ontology (v2.0)**  
   - Recent formalization: `lean/Physics/T64/`

*(Additional papers will be added here as they are formalized.)*

## Core Contributions (from the new TCSC paper)
•  Machine-verified proof of TCSC logical completeness (∀ p, Provable p ∨ Provable (¬p)) without sorry.
•  Formal derivations of STM, SRM, FSC, and T⁶⁴ topology.
•  Model-theoretic independence proofs for the four core laws.
•  Tool comparison: Lean 4 vs. Rocq.

## Repository Structure
. ├── lean/                  # Lean 4 formalizations (main) │   ├── TCSC/              # Core TCSC axioms and completeness │   ├── YXTT/              # Self-Referential Mind-Field Type Theory │   ├── Physics/T64/       # T⁶⁴ topology and quantization │   ├── Constants/         # Physical constants derivations │   └── Theorems/          # Derived theorems (STM, SRM, FSC, etc.) ├── coq/                   # Rocq/Coq formalizations ├── papers/                # LaTeX sources, PDFs, and supplementary materials ├── python/                # Numerical verification & simulations ├── docs/                  # Documentation and tool comparison ├── lake.toml ├── CITATION.cff └── LICENSE

## Links
•  Main Paper: Zenodo
•  Lean 4: https://lean-lang.org/
•  Rocq: https://coq.inria.fr/

## Quick Start (Lean 4)
```bash
git clone https://github.com/YuanXian-Theory/YXT-Formalization.git
cd YXT-Formalization

# Build
lake exe cache get
lake build

# Run specific TCSC completeness proof (example)
lake exe cache get
lean --run lean/TCSC/Completeness.lean



