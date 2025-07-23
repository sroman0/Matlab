# Sistemi Dinamici - Dynamic Systems Course

📚 **Course:** Sistemi Dinamici (Dynamic Systems)  
🏛️ **University:** Università degli Studi del Sannio  
🎓 **Level:** Bachelor's Degree  
⚙️ **Tools:** MATLAB/Simulink

## 📋 Overview

This repository contains all the projects, exercises, and assignments developed during the "Sistemi Dinamici" (Dynamic Systems) course. The work focuses on modeling, analysis, and simulation of various dynamic systems using MATLAB and Simulink, including thermal, hydraulic, and electronic systems.

## 📁 Repository Structure

### 🔧 Core Projects

#### 1. **Thermal System Models**
- **`modello_termico.m`** - Complete thermal system model with radiator and room temperature dynamics
  - Two-room thermal model with heat exchange
  - State-space representation with temperature variables
  - Transfer function analysis with poles and zeros calculation
  
- **`tesina.m`** - Advanced two-room thermal system analysis
  - Multi-input system (heat flow, ambient temperature, internal temperature)
  - Complete dynamic analysis including:
    - Pole-zero mapping
    - Impulse response
    - Bode diagram
    - Sinusoidal response simulation
  
- **`Schema_a_blocchi_modello_termico.slx`** - Simulink block diagram for thermal model
- **`Schema_a_blocchi_tesina.slx`** - Simulink implementation of the thesis thermal model

#### 2. **Hydraulic System Models**
- **`Modello_idraulico.m`** - Complete hydraulic system model
  - RLC circuit analogy for hydraulic systems
  - State-space representation with flow and pressure dynamics
  - System analysis with poles and zeros identification
  
- **`Modello_idraulico_esempio.slx`** - Simulink example of hydraulic system

#### 3. **Electronic Circuit Analysis**
- **`Elaborato_3.m`** - RC filter analysis
  - Low-pass filter design and analysis
  - Bode diagram generation
  - Frequency response characterization
  
- **`ciccio_ciccio.m`** - Circuit component parameters
  - Component values for circuit analysis (R1, R2, C1, C2)
  
- **`ciccio_ciccio.slx`** - Simulink model for circuit simulation

## 🔬 Technical Content

### System Modeling Approaches
1. **State-Space Representation**: All major systems are modeled using state-space approach
2. **Transfer Function Analysis**: Conversion to transfer functions for frequency domain analysis
3. **Poles and Zeros Analysis**: Stability and dynamic behavior characterization
4. **Time Domain Analysis**: Impulse and step response studies
5. **Frequency Domain Analysis**: Bode diagrams and frequency response

### Systems Covered
- **Thermal Systems**: Multi-room heat transfer with thermal resistances and capacitances
- **Hydraulic Systems**: Fluid flow dynamics using electrical circuit analogies
- **Electronic Circuits**: RC filters and frequency response analysis

### Key Features
- Complete mathematical modeling from first principles
- MATLAB implementation with detailed comments
- Simulink block diagrams for visual system representation
- Comprehensive analysis including stability studies
- Time and frequency domain simulations

## 🛠️ Software Requirements

- **MATLAB** (R2020a or later recommended)
- **Simulink** (for .slx files)
- **Control System Toolbox** (for advanced analysis functions)

## 🚀 How to Use

1. **Clone the repository:**
   ```bash
   git clone [your-repository-url]
   cd Matlab
   ```

2. **Run MATLAB scripts:**
   ```matlab
   % For thermal system analysis
   run('modello_termico.m')
   run('tesina.m')
   
   % For hydraulic system analysis
   run('Modello_idraulico.m')
   
   % For circuit analysis
   run('Elaborato_3.m')
   ```

3. **Open Simulink models:**
   ```matlab
   % Open any .slx file
   open('Schema_a_blocchi_modello_termico.slx')
   open('Modello_idraulico_esempio.slx')
   ```

## 📊 Analysis Results

Each script provides:
- **System matrices** (A, B, C, D for state-space)
- **Transfer functions** with numerator and denominator
- **Poles and zeros** for stability analysis
- **Graphical outputs** including:
  - Bode diagrams
  - Pole-zero maps
  - Time response plots
  - System simulations

## 📚 Course Topics Covered

- Linear system theory
- State-space modeling
- Transfer function analysis
- Stability analysis
- Time and frequency domain analysis
- System simulation and visualization
- Multi-domain system modeling (thermal, hydraulic, electrical)

## 👨‍🎓 Academic Context

This work represents the practical application of dynamic systems theory learned during the course, demonstrating proficiency in:
- Mathematical modeling of physical systems
- MATLAB/Simulink programming
- System analysis and design
- Engineering problem-solving

## 📄 File Extensions Guide

- **`.m`** - MATLAB script files
- **`.slx`** - Simulink model files
- **`.slxc`** - Simulink cache files (auto-generated)

## 🤝 Contributing

This repository serves as an academic archive. For questions or discussions about the implementations, feel free to open an issue.

---

**Note**: This repository contains academic work developed for educational purposes at Università degli Studi del Sannio. All implementations follow course requirements and academic standards.