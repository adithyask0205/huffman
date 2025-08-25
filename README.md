# Huffman Coding Implementation

## Overview

This repository contains a MATLAB implementation of Huffman coding, a lossless data compression algorithm. The implementation demonstrates the complete process of Huffman encoding and decoding for a three-symbol system.

## Files

- `huffman.m` - Main MATLAB script implementing Huffman coding
- `huffman.html` - HTML visualization of the Huffman coding process
- `huffman.png` - Visual representation of the Huffman tree
- `huffman.pdf` - Documentation in PDF format

## Features

### Core Functionality
- **Interactive Input**: User can input probabilities for three symbols
- **Input Validation**: Ensures probabilities sum to 1
- **Huffman Dictionary Generation**: Creates optimal variable-length codes
- **Encoding/Decoding**: Compresses and decompresses a reference signal
- **Performance Metrics**: Calculates entropy, average codeword length, and efficiency

### Performance Analysis
- **Entropy Calculation**: Measures the theoretical minimum average codeword length
- **Efficiency Analysis**: Compares actual performance to theoretical limits
- **Verification**: Ensures lossless compression by comparing original and decoded signals

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

## Algorithm Details

### Huffman Coding Process
1. **Symbol Assignment**: Maps symbols 1, 2, 3 to user-defined probabilities
2. **Tree Construction**: Builds Huffman tree using MATLAB's `huffmandict` function
3. **Code Generation**: Creates variable-length codes based on symbol frequencies
4. **Encoding**: Compresses reference signal using generated codes
5. **Decoding**: Reconstructs original signal from compressed data

### Reference Signal
The implementation uses a predefined reference signal: `[3 1 3 2 1 2 1 1 3]` to demonstrate the encoding and decoding process.

## Mathematical Background

### Key Concepts
- **Entropy (H)**: Theoretical minimum average codeword length
  - H = -Σ(p_i × log₂(p_i))
- **Average Codeword Length**: Actual average length of Huffman codes
- **Efficiency**: Ratio of entropy to average codeword length (expressed as percentage)

### Optimality
Huffman coding produces optimal prefix codes, meaning:
- No codeword is a prefix of another codeword
- Higher probability symbols get shorter codes
- The algorithm achieves compression close to the entropy limit

## Error Handling

The implementation includes robust error handling:
- **Input Validation**: Ensures probabilities sum to 1
- **Loop Structure**: Prompts for re-input if validation fails
- **Verification**: Confirms successful encoding/decoding

## Applications

Huffman coding is widely used in:
- File compression (ZIP, GZIP)
- Image compression (JPEG, PNG)
- Audio compression (MP3, AAC)
- Data transmission protocols

## Limitations

- Designed for three-symbol systems only
- Requires MATLAB Communications Toolbox
- Fixed reference signal (not user-configurable)

## Contributing

Feel free to extend this implementation by:
- Supporting more symbols
- Adding visualization of the Huffman tree
- Implementing adaptive Huffman coding
- Adding support for file input/output

## License

This project is provided as educational material for understanding Huffman coding principles. 
