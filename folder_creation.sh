#!/bin/bash

# Define the base directory
BASE_DIR="AllAgenticWorkflows"

# Define the folder structure
FOLDERS=(
  "data/raw"
  "data/processed"
  "embeddings/chroma"
  "embeddings/pinecone"
  "notebooks"
  "src/data_ingestion"
  "src/embedding"
  "src/llm_tasks"
  "src/query"
  "src/deployment"
  "src/utils"
  "visualizations"
  "docs"
  "tests"
)

# Create the base directory
mkdir -p "$BASE_DIR"

# Create the folder structure
for folder in "${FOLDERS[@]}"; do
  mkdir -p "$BASE_DIR/$folder"
done

# Create empty files
touch "$BASE_DIR/requirements.txt"
touch "$BASE_DIR/Dockerfile"
touch "$BASE_DIR/Jenkinsfile"
touch "$BASE_DIR/README.md"

echo "Folder structure created successfully in $BASE_DIR"
