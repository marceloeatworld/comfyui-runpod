#!/bin/bash

# This file will be sourced in init.sh

# https://raw.githubusercontent.com/ai-dock/comfyui/main/config/provisioning/default.sh

# Packages are installed after nodes so we can fix them...
apt install -y cmake

PYTHON_PACKAGES=(
    "cmake==3.30.0"
    "insightface==0.7.3"
    "dlib==19.24.4"
    "spandrel==0.3.4"
    "pyopenssl==24.1.0"
    
)

NODES=(
    "https://github.com/ltdrdata/ComfyUI-Manager"
    "https://github.com/cubiq/ComfyUI_IPAdapter_plus"
    "https://github.com/cubiq/ComfyUI_FaceAnalysis"
    "https://github.com/cubiq/ComfyUI_InstantID"
    "https://github.com/ssitu/ComfyUI_UltimateSDUpscale"
    "https://github.com/xiaoxiaodesha/hd_node"
    "https://github.com/ltdrdata/ComfyUI-Impact-Pack"
    "https://github.com/ltdrdata/ComfyUI-Inspire-Pack"
    "https://github.com/cubiq/ComfyUI_essentials"
    "https://github.com/storyicon/comfyui_segment_anything"
    "https://github.com/da2el-ai/ComfyUI-d2-steps"
    "https://github.com/chrisgoringe/cg-use-everywhere"
    "https://github.com/Fannovel16/comfyui_controlnet_aux"
    "https://github.com/rgthree/rgthree-comfy"
    "https://github.com/sipherxyz/comfyui-art-venture"
    "https://github.com/LykosAI/ComfyUI-Inference-Core-Nodes"
    "https://github.com/TemryL/ComfyUI-IDM-VTON"
    "https://github.com/giriss/comfy-image-saver"
    "https://github.com/Acly/comfyui-inpaint-nodes"
    "https://github.com/ZHO-ZHO-ZHO/ComfyUI-YoloWorld-EfficientSAM"

)

CHECKPOINT_MODELS=(
    "https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt"
    "https://civitai.com/api/download/models/351306 dreamshaperXL_v21TurboDPMSDE.safetensors"
    "https://civitai.com/api/download/models/361593 realvisxlV40_v40LightningBakedvae.safetensors"
    "https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors"

)

LORA_MODELS=(
    "https://civitai.com/api/download/models/16576 epi_noiseoffset2.safetensors"
    "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sd15_lora.safetensors"
    "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sd15_lora.safetensors"
    "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sdxl_lora.safetensors"
    "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sdxl_lora.safetensors"
    
)

VAE_MODELS=(
    "https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors"
    "https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors"
    "https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
)

ESRGAN_MODELS=(
    "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    "https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

IPADAPTER_MODELS=(
    "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15.safetensors"
    "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15_light_v11.bin"
    "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-plus_sd15.safetensors"
    "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-plus-face_sd15.safetensors"
    "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-full-face_sd15.safetensors"
    "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15_vit-G.safetensors"
    "https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl_vit-h.safetensors"
    "https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter-plus_sdxl_vit-h.safetensors"
    "https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter-plus-face_sdxl_vit-h.safetensors"
    "https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl.safetensors"
    "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15_light.safetensors"
    "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sd15.bin"
    "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sd15.bin"
    "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-portrait-v11_sd15.bin"
    "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sdxl.bin"
    "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sdxl.bin"
    "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-portrait_sdxl.bin"
    "https://huggingface.co/ostris/ip-composition-adapter/resolve/main/ip_plus_composition_sd15.safetensors"
    "https://huggingface.co/ostris/ip-composition-adapter/resolve/main/ip_plus_composition_sdxl.safetensors"
)

CLIPVISION_MODELS=(
    "https://huggingface.co/h94/IP-Adapter/resolve/main/models/image_encoder/model.safetensors CLIP-ViT-H-14-laion2B-s32B-b79K.safetensors"
    "https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/image_encoder/model.safetensors CLIP-ViT-bigG-14-laion2B-39B-b160k.safetensors"  
)

CONTROLNET_MODELS=(
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_canny-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_depth-fp16.safetensors"
    "https://huggingface.co/kohya-ss/ControlNet-diff-modules/resolve/main/diff_control_sd15_depth_fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_hed-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_mlsd-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_normal-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_openpose-fp16.safetensors"
    "https://huggingface.co/thibaud/controlnet-openpose-sdxl-1.0/raw/main/OpenPoseXL2.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_scribble-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_seg-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_canny-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_color-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_depth-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_keypose-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_openpose-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_seg-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_sketch-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_style-fp16.safetensors"
)

### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###


function provisioning_start() {
    DISK_GB_AVAILABLE=$(($(df --output=avail -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_USED=$(($(df --output=used -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_ALLOCATED=$(($DISK_GB_AVAILABLE + $DISK_GB_USED))
    provisioning_print_header
    provisioning_get_nodes
    provisioning_install_python_packages
    if [ ${#failed_nodes[@]} -eq 0 ]; then
        provisioning_get_models \
            "${WORKSPACE}/storage/stable_diffusion/models/ckpt" \
            "${CHECKPOINT_MODELS[@]}"
        provisioning_get_models \
            "${WORKSPACE}/storage/stable_diffusion/models/lora" \
            "${LORA_MODELS[@]}"
        provisioning_get_models \
            "${WORKSPACE}/storage/stable_diffusion/models/controlnet" \
            "${CONTROLNET_MODELS[@]}"
        provisioning_get_models \
            "${WORKSPACE}/storage/stable_diffusion/models/vae" \
            "${VAE_MODELS[@]}"
        provisioning_get_models \
            "${WORKSPACE}/storage/stable_diffusion/models/esrgan" \
            "${ESRGAN_MODELS[@]}"
        provisioning_get_models \
            "${WORKSPACE}/storage/stable_diffusion/models/ipadapter" \
            "${IPADAPTER_MODELS[@]}"
        provisioning_get_models \
            "${WORKSPACE}/storage/stable_diffusion/models/clip_vision" \
            "${CLIPVISION_MODELS[@]}"
    else
        printf "Skipping model downloads due to failed node installations.\n"
    fi
    provisioning_print_end
}

function install_node() {
    local repo="$1"
    local dir="${repo##*/}"
    local path="/opt/ComfyUI/custom_nodes/${dir}"
    local requirements="${path}/requirements.txt"

    printf "Installing node: %s...\n" "${repo}"
    if git clone "${repo}" "${path}" --recursive; then
        if [[ -e $requirements ]]; then
            printf "Installing requirements for node %s...\n" "${repo}"
            if micromamba -n comfyui run ${PIP_INSTALL} -r "${requirements}"; then
                printf "Requirements installed successfully for node %s.\n" "${repo}"
            else
                printf "Failed to install requirements for node %s.\n" "${repo}"
                return 1
            fi
        fi
        return 0
    else
        printf "Failed to install node: %s\n" "${repo}"
        return 1
    fi
}

function provisioning_get_nodes() {
    local failed_nodes=()
    for repo in "${NODES[@]}"; do
        dir="${repo##*/}"
        path="/opt/ComfyUI/custom_nodes/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating node: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                    micromamba -n comfyui run ${PIP_INSTALL} -r "$requirements"
                fi
            fi
        else
            if ! install_node "$repo"; then
                failed_nodes+=("$repo")
            fi
        fi
    done

    # Retry failed installations
    if [ ${#failed_nodes[@]} -gt 0 ]; then
        printf "Retrying installation for failed nodes...\n"
        local retry_failed_nodes=()
        for repo in "${failed_nodes[@]}"; do
            if ! install_node "$repo"; then
                retry_failed_nodes+=("$repo")
            fi
        done
        failed_nodes=("${retry_failed_nodes[@]}")
    fi

    # Final verification
    if [ ${#failed_nodes[@]} -eq 0 ]; then
        printf "All nodes were successfully installed.\n"
    else
        printf "The following nodes failed to install after retry:\n"
        for node in "${failed_nodes[@]}"; do
            printf "  - %s\n" "$node"
        done
    fi
}

function provisioning_install_python_packages() {
    if [ ${#PYTHON_PACKAGES[@]} -gt 0 ]; then
        printf "Installing global Python packages...\n"
        if micromamba -n comfyui run ${PIP_INSTALL} ${PYTHON_PACKAGES[*]}; then
            printf "Global Python packages installed successfully.\n"
        else
            printf "Failed to install global Python packages.\n"
        fi
    fi
}


function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    dir="$1"
    mkdir -p "$dir"
    shift
    if [[ $DISK_GB_ALLOCATED -ge $DISK_GB_REQUIRED ]]; then
        arr=("$@")
    else
        printf "WARNING: Low disk space allocation - Only the first model will be downloaded!\n"
        arr=("$1")
    fi
    
    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        # Extract the filename from the URL
        filename=$(basename "$url")
        
        # Check if the file already exists
        if [[ -f "$dir/$filename" ]]; then
            printf "Model %s already exists, skipping download.\n" "$filename"
        else
            printf "Downloading: %s\n" "${url}"
            provisioning_download "${url}" "${dir}"
            printf "\n"
        fi
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

function provisioning_download() {
    local url="$1"
    local dir="$2"
    local dotbytes="${3:-4M}"
    
    # Split the input into URL and filename (if provided)
    IFS=' ' read -r download_url filename <<< "$url"
    
    if [ -z "$filename" ]; then
        # If no filename is provided, let wget decide the filename
        wget -qnc --content-disposition --show-progress -e dotbytes="$dotbytes" -P "$dir" "$download_url"
    else
        # If a filename is provided, use it
        wget -qnc --content-disposition --show-progress -e dotbytes="$dotbytes" -P "$dir" -O "$dir/$filename" "$download_url"
    fi
}

provisioning_start
