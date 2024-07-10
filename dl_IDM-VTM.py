import os
from huggingface_hub import snapshot_download

WEIGHTS_PATH = "/workspace/ComfyUI/custom_nodes/ComfyUI-IDM-VTON/models"

if __name__ == "__main__":
    os.makedirs(WEIGHTS_PATH, exist_ok=True)
    snapshot_download(repo_id="yisol/IDM-VTON", local_dir=WEIGHTS_PATH)