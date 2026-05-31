# YXT-Formalization

**Formalization of YuanXian Theory (YXT)**  
Self-Referential Mind-Field Type Theory (YXTT) and ZFC Extension

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.19965180.svg)](https://doi.org/10.5281/zenodo.19965180)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Overview

This repository contains the complete formalization of **YuanXian Theory (YXT)** as presented in the paper:

> **From Philosophical Program to Formal Science: The Complete Axiomatization, Dual Realization and Machine Verification of YuanXian Theory (YXT)**

**DOI**: [10.5281/zenodo.19965180](https://doi.org/10.5281/zenodo.19965180)

The theory is realized in two foundational mathematical systems:
- **YXTT**: Self-Referential Mind-Field Type Theory based on Homotopy Type Theory (HoTT) in Lean 4
- **ZFC Extension**: Ontological extension in classical Zermelo-Fraenkel set theory

## Core Features

- Full formalization of the Four Core Axioms (TCSC, STM, FSC, SRM)
- Machine-verified proofs in Lean 4 and Coq
- Derivation of 24 fundamental physical constants
- Conditional formal proof of the Riemann Hypothesis
- Proof of zero total energy of the universe
- Prediction of the True-Circle Self-Referon (TCSR)
  
-  Cosmological Constant
 `CosmologicalConstant.lean`: Formal proof that $\Lambda_{\text{eff}} = 0$ on $T^{64}$ topology.

## Repository Structure
lean/                  # Main formalization (Lean 4)
├── YXTT/
├── ZFC_Extension/
├── Constants/
└── Theorems/

coq/                   # Coq formalization
python/                # Numerical verification
docs/                  # Papers and supplementary files

## Software / Repository
[@misc](https://x.com/misc){yxt_formalization,
  author       = {YuanXian Institute},
  title        = {YXT-Formalization},
  year         = {2026},
  url          = {[https://github.com/YuanXian-Theory/YXT-Formalization](https://github.com/YuanXian-Theory/YXT-Formalization)},
  doi          = {10.5281/zenodo.19965180}
}
Software / Repository

## Quick Start (Lean 4)
git clone [https://github.com/YuanXian-Theory/YXT-Formalization.git](https://github.com/YuanXian-Theory/YXT-Formalization.git)
cd YXT-Formalization

## Recent Updates (2026年6月)

### T⁶⁴ Normal Mode Quantization Formalization
- Added `lean/Physics/T64/T64_Basic.lean`
- Added `lean/Physics/T64/NormalModeQuantization.lean`

This formalizes the core theorems from the paper:
> **Normal Mode Quantization on T⁶⁴: Based on the YuanXian Living Organism Ontology** (v2.0)

**Formalized Theorems:**
- Normal mode spectrum discreteness
- Zero-point energy
- Quantum collapse as TCSC fixed-point projection

# Build Lean 4 project
lake exe cache get
lake build

# Run numerical calculations
cd python && python run_all_calculations.py

## Links
•  Main Paper — DOI: 10.5281/zenodo.19965180
•  Zenodo Archive — https://zenodo.org/records/19965180
•  Lean 4 — https://lean-lang.org/
•  Coq Proof Assistant — https://coq.inria.fr/


