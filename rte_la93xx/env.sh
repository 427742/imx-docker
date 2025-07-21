#!/bin/bash
# Here are some default settings.
# Make sure DOCKER_WORKDIR is created and owned by current user.
#

# need sanity checks, change not required unless you know why
DOCKER_WORKDIR="/opt/yocto"
DOCKER_IMAGE_TAG="imx-yocto"

# Update this path, where yocto builds will reside on HOST
HOST_WORKDIR="/Workspace/Build/yocto"

IMX_RELEASE="rte_la93xx"
# Yocto
IMX_BUILD_FLAVOR="release"

DL_DIR="${DOCKER_WORKDIR}/rte_la93xx_release-build/downloads"
YOCTO_DIR="${DOCKER_WORKDIR}/${IMX_RELEASE}-build"

MACHINE="imx8mp-rfnm"
DISTRO="nxp-real-time-edge"
IMAGES="nxp-image-real-time-edge"

REMOTE="https://github.com/nxp-real-time-edge-sw/yocto-real-time-edge"
BRANCH="la93xx"
MANIFEST="${IMX_RELEASE}_${IMX_BUILD_FLAVOR}.xml"
