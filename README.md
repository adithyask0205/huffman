# Huffman Coding Implementation

## Overview

This repository contains a MATLAB implementation of Huffman coding. The implementation demonstrates the complete process of Huffman encoding and decoding for a three-symbol system.

## Files

- `huffman.m` - Main MATLAB script implementing Huffman coding

## Usage

### Prerequisites
- MATLAB (with Communications Toolbox for `huffmandict`, `huffmanenco`, and `huffmandeco` functions)

### Running the Program
1. Open MATLAB
2. Navigate to the project directory
3. Run the script:
   ```matlab
   huffman
   ```

### Input Requirements
- Enter three probability values (between 0 and 1)
- Probabilities must sum to exactly 1
- Example valid inputs: 0.5, 0.3, 0.2

### Example Output
```
---------------------------------
Huffman Code Word Dictionary
Symbol 1: 0
Symbol 2: 10
Symbol 3: 11
---------------------------------
Average Code Word Length: 1.700000
Entropy of Code: 1.485475
Efficiency of Code: 87.38%
---------------------------------
Reference Signal:
 3 1 3 2 1 2 1 1 3
---------------------------------
Encoded Signal:
 11 0 11 10 0 10 0 0 11
---------------------------------
Decoded Signal:
 3 1 3 2 1 2 1 1 3
Decoded signal matches original signal. Encoding success.
```

### Reference Signal
The implementation uses a predefined reference signal: `[3 1 3 2 1 2 1 1 3]` to demonstrate the encoding and decoding process.

## Mathematical Background

### Key Concepts
- **Entropy (H)**: Theoretical minimum average codeword length
  - H = -Σ(p_i × log₂(p_i))
- **Average Codeword Length**: Actual average length of Huffman codes
- **Efficiency**: Ratio of entropy to average codeword length (expressed as percentage)

This project is provided as educational material for understanding Huffman coding principles. 
