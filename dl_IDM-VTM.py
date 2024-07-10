import os.path
from huggingface_hub import snapshot_download

CURRENT_PATH = os.path.abspath(__file__)
WEIGHTS_PATH = os.path.join("/workspace/ComfyUI/models", "yisol/IDM-VTON")

if __name__ == "__main__":
    snapshot_download(repo_id="yisol/IDM-VTON", local_dir=WEIGHTS_PATH)
