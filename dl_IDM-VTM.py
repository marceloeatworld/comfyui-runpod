import os.path
from huggingface_hub import snapshot_download

CURRENT_PATH = os.path.dirname(os.path.abspath(__file__))
WEIGHTS_PATH = os.path.join(CURRENT_PATH, "/workspace/storage/stable_diffusion/models/ckpt")
HF_REPO_ID = "yisol/IDM-VTON"

if __name__ == "__main__":
    snapshot_download(repo_id=HF_REPO_ID, local_dir=WEIGHTS_PATH)