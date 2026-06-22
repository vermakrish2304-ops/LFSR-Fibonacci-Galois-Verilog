# 🔁 Linear Feedback Shift Registers — Fibonacci & Galois

> 4-bit Fibonacci and Galois LFSR implementations in Verilog HDL,
> simulated and verified using AMD Vivado.

---

## 📌 Overview

A **Linear Feedback Shift Register (LFSR)** is a shift register
whose input bit is a linear function of its previous state,
typically implemented using XOR gates. LFSRs are widely used in
pseudo-random number generation, built-in self-test (BIST),
data scrambling, and error detection circuits.

This repository implements two standard LFSR architectures:
- **Fibonacci LFSR** — feedback taps XORed and fed into the
  first stage
- **Galois LFSR** — feedback distributed across internal stages
  for faster operation

---

## 🧠 LFSR Architectures

### Fibonacci LFSR
- Feedback taken from output and XORed through tapped stages
- Result fed back into the first flip-flop
- Simpler structure, easier to understand
- Slightly slower due to serial feedback path

### Galois LFSR
- Feedback distributed directly into intermediate stages
- Parallel feedback reduces critical path delay
- Faster operation compared to Fibonacci
- Preferred in hardware implementations for speed

---

## ⚙️ Design Specifications

| Parameter | Value |
|-----------|-------|
| Register Width | 4-bit |
| Architecture | Fibonacci & Galois |
| Feedback Logic | XOR-based |
| Maximal Length | 2⁴ - 1 = 15 states |
| HDL | Verilog |
| Simulation Tool | AMD Vivado |

---

## 📁 File Structure
LFSR-Fibonacci-Galois-Verilog/

│

├── fibonacci_lfsr.v       # Fibonacci LFSR design

├── galois_lfsr.v          # Galois LFSR design

├── fibonacci_tb.v         # Fibonacci testbench

├── galois_lfsr_tb.v       # Galois testbench

└── README.md

---

## ▶️ How to Run

1. Open **AMD Vivado** and create a new project
2. Add the respective `.v` file as design source
3. Add the corresponding `_tb.v` as simulation source
4. Run **Behavioral Simulation**
5. Observe the pseudo-random sequence in the waveform

---

## 🛠️ Tools Used

| Tool | Purpose |
|------|---------|
| AMD Vivado | RTL Design & Simulation |
| Verilog HDL | Hardware Description Language |

---

## 🏫 Institution

**Birla Institute of Technology, Mesra**
Department of Electronics & Communication Engineering
Batch of 2028
