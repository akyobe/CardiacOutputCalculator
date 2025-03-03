# Cardiac Output Calculator

A MATLAB-based tool for quantifying cardiac output from echocardiographic images. This project leverages image processing techniques to extract critical cardiac measurements from parasternal long axis views and Doppler waveforms, ultimately computing stroke volume and cardiac output to aid clinical decision-making.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Technical Details](#technical-details)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Future Enhancements](#future-enhancements)
- [Contributing](#contributing)
- [License](#license)

## Overview

The Cardiac Output Calculator is designed to assist clinicians and researchers by providing an interactive, semi-automated workflow in MATLAB. The tool analyzes:
- **Parasternal Long Axis (PLAX) Views:** For anatomical visualization.
- **Doppler Waveforms:** To extract the Velocity Time Integral (VTI) and measure the Left Ventricular Outflow Tract (LVOT) diameter.

By integrating these measurements, the application computes stroke volume and cardiac output using established hemodynamic equations, thereby offering objective metrics for cardiovascular assessment.

## Features

- **Interactive GUI:** Guides users through the image analysis process with a user-friendly interface.
- **LVOT Diameter Measurement:** Enables interactive point selection to measure the LVOT accurately.
- **Doppler Waveform Tracing:** Extracts VTI from Doppler images.
- **Automated Calculations:** Computes stroke volume and cardiac output based on the analyzed parameters.
- **Clinical Utility:** Assists in evaluating heart function, monitoring treatment response, and supporting critical care decisions.

## Technical Details

- **Environment:** MATLAB
- **Techniques:** Medical image processing, interactive GUI development, and implementation of cardiology-specific algorithms.
- **Workflow:** Semi-automated process guiding users from image annotation to quantitative analysis.

## Getting Started

### Prerequisites

- MATLAB (with Image Processing Toolbox and relevant toolboxes for GUI development)
- Basic understanding of echocardiographic image analysis

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/cardiac-output-calculator.git
