#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# === Configuration ===

# Base URL for Hugging Face repository
BASE_URL="https://huggingface.co/Aitrepreneur/FLX/resolve/main"

# === Pre-Execution Checks ===

# Check if curl is installed
if ! command -v curl &> /dev/null
then
    echo "[ERROR] curl is not installed. Please install curl and rerun the script."
    exit 1
fi

# === Models Directory ===
echo "[INFO] Setting up models directory..."
mkdir -p models
cd models

# --- UNET Directory ---
echo "[INFO] Setting up checkpoints directory..."
mkdir -p checkpoints
cd checkpoints

echo "[INFO] Downloading sd3.5_large.safetensors..."
curl -L -o "sd3.5_large.safetensors" "$BASE_URL/sd3.5_large.safetensors?download=true"   

echo "[INFO] Downloading sd3.5_medium.safetensors..."
curl -L -o "sd3.5_medium.safetensors" "$BASE_URL/sd3.5_medium.safetensors?download=true" 

# Navigate back to models directory
cd ..

# --- CLIP Directory ---
echo "[INFO] Setting up clip directory..."
mkdir -p clip
cd clip

echo "[INFO] Downloading t5xxl_fp16.safetensors..."
curl -L -o "t5xxl_fp16.safetensors" "$BASE_URL/t5xxl_fp16.safetensors?download=true"

echo "[INFO] Downloading clip_l.safetensors..."
curl -L -o "clip_l.safetensors" "$BASE_URL/clip_l.safetensors?download=true" 

echo "[INFO] Downloading clip_g.safetensors..."      
curl -L -o "clip_g.safetensors" "$BASE_URL/clip_g.safetensors?download=true"

echo "[INFO] All models downloaded successfully."
