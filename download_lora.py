from huggingface_hub import hf_hub_download

file_path = hf_hub_download(
    repo_id="rjt1221/SD3.5-LORA", 
    filename="lora.safetensors",
    use_auth_token=True
)

print(f"File downloaded to: {file_path}")
