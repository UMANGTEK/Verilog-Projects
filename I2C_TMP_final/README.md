# I2C Master FSM for TMP3 Temperature Sensor

This project implements an I²C master controller in Verilog to communicate with the TMP3 temperature sensor and read 16-bit temperature data.

## 📁 Project Structure

- `i2c_tmp3_fsm.v` – Top-level Verilog module implementing the full I²C read transaction using a finite state machine.
- FSM diagram (see repo image) – Visual representation of the state machine controlling the I²C logic.

## ✅ Features

- Pure Verilog implementation – no IP cores or vendor-specific modules (except optional ILA).
- Supports TMP3 temperature sensor over I²C.
- Fully synchronous design with internal clock divider.
- Outputs:
  - `temp_msb` – Most significant byte of temperature.
  - `temp_lsb` – Least significant byte.
  - `done` – Flag indicating end of successful transaction.
- Tri-state `SDA` line support with open-drain emulation.

## 🛠️ FSM Operation

The finite state machine handles:
1. START condition generation
2. Slave addressing (write & read mode)
3. Register pointer setup
4. ACK/NACK checking
5. Data read (MSB & LSB)
6. STOP condition

The transition diagram is included as an image in the repo for easy visualization.

## 🔍 Debug Support

An ILA core is instantiated for debugging internal signals such as state transitions, bit counters, and SDA/SCL behavior.

## 🧰 Requirements

- Xilinx Vivado (for ILA support)
- TMP3 or compatible sensor on an I²C bus
- FPGA board with GPIO access to SDA/SCL (e.g., Zybo Z7)

## 🔗 Author

**Umang Tekriwal**  
[GitHub Profile](https://github.com/UMANGTEK)

---

