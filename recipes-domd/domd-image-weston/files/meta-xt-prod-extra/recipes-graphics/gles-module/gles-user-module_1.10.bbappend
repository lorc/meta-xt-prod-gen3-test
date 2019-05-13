require inc/xt_shared_env.inc

COMPILER_URL = "${TOPDIR}/../proprietary/Meta_Embedded_Toolkit-2.8.1.CentOS-5.tar.gz"

PVRUM_URL = "${TOPDIR}/../proprietary/pvr_um_vgpu_img"
SRC_URI_r8a7795 = "file://${PVRUM_URL}"
SRC_URI_r8a7796 = "file://${PVRUM_URL}"
SRC_URI_r8a77965 = "file://${PVRUM_URL}"
S = "${WORKDIR}/${PVRUM_URL}"

do_configure_prepend() {
    if [ -d ${WORKDIR}/Meta_Embedded_Toolkit-2.8.1.CentOS-5 ]
    then
        ${WORKDIR}/Meta_Embedded_Toolkit-2.8.1.CentOS-5/install.sh x64 ${S}
        rm -rf ${S}/Meta_Embedded_Toolkit-2.8.1.CentOS-5
    fi
}
