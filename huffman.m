clc; clear;

% User-input probabilities for symbols
a = input("Enter probability for symbol 1: ");
b = input("Enter probability for symbol 2: ");
c = input("Enter probability for symbol 3: ");

% Check whether probabilities add up to one
while a + b + c ~= 1
    fprintf("Invalid inputs. Probabilites don't add up to one.\n");
    a = input("Enter probability for symbol 1: ");
    b = input("Enter probability for symbol 2: ");
    c = input("Enter probability for symbol 3: ");
end

symbol = [ 1 2 3 ]; % Symbol array
prob = [ a b c ]; % Probability array

% Huffman codeword generation and average codeword length calculation
[dict, avgLen] = huffmandict(symbol, prob);

% Entropy
entropy = -sum((prob .* log2(prob)));

% Efficiency
efficiency = entropy/avgLen;

% Reference Signal
signal = [ 3 1 3 2 1 2 1 1 3 ];

% Huffman Encoding
encoded = huffmanenco(signal, dict);

% Huffman Decoding
decoded = huffmandeco(encoded, dict);

% Displaying the results
disp("---------------------------------")
disp("Huffman Code Word Dictionary")
for i = 1:length(dict)
    fprintf("Symbol %d: %s\n", dict{i,1}, num2str(dict{i,2}));
end
disp("---------------------------------")
fprintf("Average Code Word Length: %f\n", avgLen);
fprintf("Entropy of Code: %f\n", entropy);
fprintf("Efficiency of Code: %0.2f%%\n", efficiency*100);
disp("---------------------------------")
fprintf("Reference Signal:\n %s\n", num2str(signal));
disp("---------------------------------")
fprintf("Encoded Signal:\n %s\n", num2str(encoded));
disp("---------------------------------")
fprintf("Decoded Signal:\n %s\n", num2str(decoded));

% Verification
if isequal(decoded, signal)
    fprintf("Decoded signal matches original signal. Encoding success.\n")
else
    fprintf("Decoded signal does not match original signal. Encoding failed.\n")
end

