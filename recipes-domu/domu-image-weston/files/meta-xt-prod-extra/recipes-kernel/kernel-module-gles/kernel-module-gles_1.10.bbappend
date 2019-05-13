require inc/xt_shared_env.inc

PVRKM_URL = "${TOPDIR}/../proprietary/pvr_km_vgpu_img"
SRC_URI = "file://${PVRKM_URL}"

LIC_FILES_CHKSUM = " \
    file://${PVRKM_URL}/GPL-COPYING;md5=60422928ba677faaa13d6ab5f5baaa1e \
    file://${PVRKM_URL}/MIT-COPYING;md5=8c2810fa6bfdc5ae5c15a0c1ade34054 \
"
S = "${WORKDIR}/${PVRKM_URL}"
B = "${KBUILD_DIR}"

KBUILD_DIR = "${WORKDIR}/${PVRKM_URL}/build/linux/${RCAR_TARGET}_linux"
