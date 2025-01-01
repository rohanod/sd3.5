import os
from huggingface_hub import hf_hub_download

destination_path = os.path.join(os.getcwd(), "lora.safetensors")

file_path = hf_hub_download(
    repo_id="rjt1221/SD3.5-LORA", 
    filename="lora.safetensors",
    local_dir=os.getcwd(),
    local_dir_use_symlinks=False,
    use_auth_token=True
)
