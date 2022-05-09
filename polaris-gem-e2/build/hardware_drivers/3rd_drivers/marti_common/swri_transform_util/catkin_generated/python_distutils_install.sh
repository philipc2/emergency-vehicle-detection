#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/marti_common/swri_transform_util"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/gem/team-waymoo/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/gem/team-waymoo/install/lib/python3/dist-packages:/home/gem/team-waymoo/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/gem/team-waymoo/build" \
    "/usr/bin/python3" \
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/marti_common/swri_transform_util/setup.py" \
    egg_info --egg-base /home/gem/team-waymoo/build/hardware_drivers/3rd_drivers/marti_common/swri_transform_util \
    build --build-base "/home/gem/team-waymoo/build/hardware_drivers/3rd_drivers/marti_common/swri_transform_util" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/gem/team-waymoo/install" --install-scripts="/home/gem/team-waymoo/install/bin"
