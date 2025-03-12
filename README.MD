# Protein Visualization Project

This project visualizes protein structures using Jupyter Lab and py3Dmol.

## Setup Instructions

1. **Clone this repository** to your local machine.
2. **Navigate to the project folder**:
    cd protein_viz_docker
3. **Build and run the Docker container**:
- Using Docker Compose:
  ```
  docker-compose up --build
4. **Open Jupyter Lab**:
- After the container starts, you will see a URL with a token in the logs.
- Open the URL in your web browser to access Jupyter Lab.

## Project Structure

- `requirements.txt`: Python dependencies.
- `Dockerfile`: Container definition.
- `docker-compose.yml`: (Optional) Simplifies container management.
- `notebooks/protein_visualization.ipynb`: Example notebook to visualize protein structures using py3Dmol.

## Usage

Open the example notebook in Jupyter Lab to load and visualize protein structures.

Happy coding!
