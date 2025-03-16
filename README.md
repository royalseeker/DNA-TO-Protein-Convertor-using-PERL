# DNA to Protein Converter using Perl

This Perl script translates DNA sequences into their corresponding protein sequences. Additionally, it analyzes the resulting amino acid sequences to determine the percentages of electrically charged, polar uncharged, and special case amino acids.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Requirements](#requirements)
- [Usage](#usage)
- [Amino Acid Classifications](#amino-acid-classifications)
- [Project Structure](#project-structure)

## Introduction

Amino acids are organic compounds that serve as the building blocks of proteins. They contain amine (NH₂) and carboxyl (COOH) functional groups, along with a unique side chain (R group) specific to each amino acid. While over 500 naturally occurring amino acids are known, only 20 appear in the genetic code. These amino acids can be categorized based on the properties of their side chains, such as being electrically charged, polar uncharged, or having special structural features.

## Features

- **DNA to Protein Translation**: Converts a given DNA sequence into its corresponding protein sequence using the standard genetic code.
- **Amino Acid Analysis**: Calculates the percentages of:
  - Electrically charged amino acids
  - Polar uncharged amino acids
  - Special case amino acids

## Requirements

- **Perl**: Ensure that Perl is installed on your system. You can download it from the [official Perl website](https://www.perl.org/).

## Usage

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/royalseeker/DNA-TO-Protein-Convertor-using-PERL.git
   ```
2. **Navigate to the Project Directory**:
   ```bash
   cd DNA-TO-Protein-Convertor-using-PERL
   ```
3. **Prepare Your DNA Sequence**:
   - Create a text file (e.g., `input_dna.txt`) containing your DNA sequence.
4. **Run the Script**:
   ```bash
   perl DNAtoProtein.pl input_dna.txt
   ```
5. **Output**:
   - The script will display the translated protein sequence and the percentages of each amino acid classification.

## Amino Acid Classifications

- **Electrically Charged**:
  - Arginine (R)
  - Lysine (K)
  - Aspartic acid (D)
  - Glutamic acid (E)
  - Histidine (H)

- **Polar Uncharged**:
  - Serine (S)
  - Threonine (T)
  - Asparagine (N)
  - Glutamine (Q)

- **Special Case**:
  - Cysteine (C)
  - Glycine (G)
  - Proline (P)

## Project Structure

📁 **DNA-TO-Protein-Convertor-using-PERL**  
│── 📜 **DNAtoProtein.pl** (Main Perl script)  
│── 📜 **LICENSE** (License information)  
└── 📜 **README.md** (Project documentation)  


