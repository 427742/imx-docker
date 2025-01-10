#!/bin/bash
# This script will run into container

# source the common variables
. ./rte_la93xx/env.sh

#mkdir -p ${YOCTO_DIR}
cd ${YOCTO_DIR}
pwd
# Init

#git config --local user.email "build.no-reply@nxp.com"
#git config --local user.name "Builder Docker Yocto"

#repo init \ -u ${REMOTE} \ -b ${BRANCH} \ -m ${MANIFEST}

#repo sync -j`nproc`

# source the yocto env
echo EULA=1 MACHINE="${MACHINE}" DISTRO="${DISTRO}" source real-time-edge-setup-env.sh -b build_${DISTRO}

#EULA=1 MACHINE="${MACHINE}" DISTRO="${DISTRO}" source imx-setup-release.sh -b build_${DISTRO}
EULA=1 MACHINE="${MACHINE}" DISTRO="${DISTRO}" source real-time-edge-setup-env.sh -b build_${DISTRO}

# Build
#git config user.email "build.no-reply@nxp.com"
#git config user.name "Builder Docker Yocto"

/bin/bash
#bitbake ${IMAGES}
