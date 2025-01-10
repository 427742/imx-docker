#!/bin/bash
# This script will run into container

# source the common variables

. rte_la93xx/env.sh

#

#mkdir -p ${YOCTO_DIR}
cd ${YOCTO_DIR}
pwd
# Init

#repo init \ -u ${REMOTE} \ -b ${BRANCH} \ -m ${MANIFEST}

#repo sync -j`nproc`

# source the yocto env

#EULA=1 MACHINE="${MACHINE}" DISTRO="${DISTRO}" source imx-setup-release.sh -b build_${DISTRO}
EULA=1 MACHINE="${MACHINE}" DISTRO="${DISTRO}" source real-time-edge-setup-env.sh -b build_${DISTRO}

# Build

#bitbake u-boot-imx-tools-native optee-os --runall=fetch
bitbake $@
