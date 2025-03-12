# Protein Visualization Project

This project visualizes protein structures using Jupyter Lab and py3Dmol in a reproducible Docker environment.

## Setup Instructions

### A. For Windows Users (Using WSL2)
1. **Install WSL2**  
   - Open PowerShell as Administrator and run:
     ```powershell
     wsl --install -d Ubuntu-22.04
     ```
   - Restart your machine if prompted.
   - Open Ubuntu from the Start Menu and complete the initial setup.

2. **Install Docker Desktop**  
   - Download and install [Docker Desktop](https://www.docker.com/products/docker-desktop) for Windows.
   - In Docker Desktop settings, enable the **WSL2 backend** and integrate with your Ubuntu distribution.
   - Restart Docker Desktop.

### B. For All Users (Linux/WSL2/Mac)
1. **Clone this repository** to your local machine.
2. **Navigate to the project folder**:
    ```bash
    cd protein_viz_docker
    ```
3. **Install Docker, build, and run the Docker container**:
    - Using Docker Compose:
      ```bash
      docker-compose up --build
      ```
4. **Open Jupyter Lab**:
    - After the container starts, you will see a URL with a token in the logs.
    - Open the URL in your web browser to access Jupyter Lab.
    - Use the interactive Jupyter environment to run notebooks and visualize protein structures.

## Project Structure

- `requirements.txt`: Lists the Python dependencies.
- `Dockerfile`: Defines the Docker image, including the base image, working directory, and installation steps.
- `docker-compose.yml`: Simplifies building and running the Docker container.
- `notebooks/protein_visualization.ipynb`: An example notebook to visualize protein structures using py3Dmol.

## Additional Notes

- **WSL2 is recommended for Windows users** because it provides a native Linux environment and works seamlessly with Docker Desktop.
- The Docker container ensures that all team members use the same environment, avoiding dependency issues.
- Once Jupyter Lab is running, you can input protein sequences or load PDB files to visualize protein structures interactively.

Happy coding!
