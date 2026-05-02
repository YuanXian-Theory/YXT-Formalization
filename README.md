# YXT-Formalization

**Formalization of YuanXian Theory (YXT)**  
Self-Referential Mind-Field Type Theory (YXTT) and ZFC Extension

[![Lean 4](https://img.shields.io/badge/Lean%204-4.7.0+-blue)](https://lean-lang.org/)
[![Coq](https://img.shields.io/badge/Coq-8.18+-blue)](https://coq.inria.fr/)

## Overview

This repository contains the complete formalization of **YuanXian Theory (YXT)** as presented in the paper:

> "From Philosophical Program to Formal Science: The Complete Axiomatization, Dual Realization and Machine Verification of YuanXian Theory (YXT)"

**Core Components:**

- **YXTT**: Self-Referential Mind-Field Type Theory built on Homotopy Type Theory (HoTT) in Lean 4
- **ZFC Extension**: Ontological extension with `SelfReferentialMindField`, `T⁶⁴`, and `UniverseFactor`
- Machine-verified proofs of the Four Core Axioms (TCSC, STM, FSC, SRM)
- Derivation of 24 fundamental physical constants
- Conditional formal proof of the Riemann Hypothesis
- Proof that total energy of the universe is zero
- Prediction framework for True-Circle Self-Referon (TCSR)

## Project Structure

- `lean/` — Lean 4 formalization (primary)
- `coq/` — Coq formalization
- `python/` — Numerical calculations and constant derivation
- `docs/` — Papers and supplementary materials

## Quick Start

```bash
# Clone the repo
git clone [https://github.com/YuanXian-Theory/YXT-Formalization.git](https://github.com/YuanXian-Theory/YXT-Formalization.git)
cd YXT-Formalization

# Build Lean 4 project
lake exe cache get
lake build

# Run numerical calculations
cd python && python run_all_calculations.py
