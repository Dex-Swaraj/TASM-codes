
# TASM Assembly Programs Repository

This repository contains a collection of **8086 Assembly Language Programs** written and compiled using **Turbo Assembler (TASM)** and **Turbo Linker (TLINK)**. Each program is written to demonstrate fundamental concepts of low-level programming in x86 architecture under the DOS environment.

---

## 📁 Repository Structure

The project directory includes:
- `.ASM` files — Source code for each program.
- `.EXE` files — Compiled executables for direct execution via DOSBox or native DOS.

| Filename        | Description |
|----------------|-------------|
| `EVEN_ODD.ASM` / `EVEN_ODD.EXE` | Determines if a number is even or odd |
| `FIBONACC.ASM` / `FIBONACC.EXE` | Generates Fibonacci sequence |
| `HELLO.ASM` / `HELLO.EXE`       | Displays a simple "Hello World" |
| `ADD.ASM`, `ADD8.EXE`, etc.     | Various addition routines |
| `COMPARE_.EXE`                  | Compares two numbers |
| `POS_NEG.EXE`                   | Checks if a number is positive or negative |
| `REVERSE.EXE`                   | Reverses digits of a number |
| `SUM_ARRA.EXE`                  | Sums elements of an array |
| `MULT16.EXE`, `MULT32.EXE`      | Multiplication routines |
| `ASCE.EXE`                      | Ascending sort |
| `SMALLEST.EXE`                  | Finds the smallest number |
| `16BIT_8B.EXE`, `16BIT_32.EXE`  | Bit-level operations |
| `ADD8.EXE`, `ADDEX.EXE`         | Additional add routines |
| Others                          | Additional examples and helper files |

---

## 🛠 Requirements

To run or modify these programs, you'll need:
- [DOSBox](https://www.dosbox.com/) – for running `.EXE` files
- Turbo Assembler (TASM)
- Turbo Linker (TLINK)

---

## ▶️ How to Run

### 🖥️ Using DOSBox:
1. **Place your folder inside a known path**, e.g., `D:\shikky\TASM`
2. Open **DOSBox** and type:
    ```
    MOUNT C D:\shikky\TASM
    C:
    HELLO.EXE
    ```

### 🛠️ Assembling a new file:
```
TASM FILENAME.ASM
TLINK FILENAME.OBJ
FILENAME.EXE
```

Example:
```
TASM EVEN_ODD.ASM
TLINK EVEN_ODD.OBJ
EVEN_ODD
```

---

## 🧠 Learning Goals

These programs are built to help understand:
- Register operations in 8086
- Conditional and looping structures
- Segment handling (`DATA`, `CODE`, `STACK`)
- DOS interrupts (INT 21H)
- Arithmetic and logic operations

---

## 📌 Notes

- Programs are compiled for **16-bit DOS** and must be run under a DOS environment (use DOSBox for modern systems).
- Each executable is approx 1 KB, making it lightweight for emulation and testing.

---

## 🤝 Contribution

This repository is intended for educational and demonstrative purposes. You are welcome to:
- Fork and improve these programs
- Add more real-mode assembly samples
- Use it for academic projects or assignments

---

## 🧑‍💻 Author

**Swaraj**

---

## 📜 License

This repository is provided for educational use. Attribution required for reuse or distribution.
