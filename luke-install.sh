
# ----------------------------------------------------------------------------------------------------------------------
function _install_shaderc_() {
# cant use prebuilt binaries because they are for ubuntu 22
git clone https://github.com/google/shaderc ~/git/shaderc
cd ~/git/shaderc
./utils/git-sync-deps
cmake -GNinja -DCMAKE_BUILD_TYPE=Release -B
sudo apt-get install libgmock-dev
mkdir build
cd build
rm CMakeCache.txt
cmake -GNinja -DCMAKE_BUILD_TYPE=Release ..
ninja
ctest # optional

}
_install_shaderc_
# ----------------------------------------------------------------------------------------------------------------------



# ----------------------------------------------------------------------------------------------------------------------
function _install_physx_() {
# https://github.com/NVIDIA-Omniverse/PhysX/blob/main/physx/documentation/platformreadme/linux/README_LINUX.md

git clone https://github.com/NVIDIA-Omniverse/PhysX/ ~/git/PhysX
cd ~/git/PhysX/physx
./generate_projects.sh
# linux-clang  option
cd ~/git/PhysX/physx/compiler/linux-clang-checked
make
}
_install_physx_
# ----------------------------------------------------------------------------------------------------------------------


# ----------------------------------------------------------------------------------------------------------------------
function _install_raygun_() {

# git clone https://github.com/W4RH4WK/Raygun ~/git/Raygun
git clone https://github.com/qpwo/fork-raygun ~/git/Raygun
code Raygun
sudo apt-get install libassimp-dev
sudo apt-get install libopenal-dev
sudo apt-get install libogg-dev
sudo apt install ninja-build pkg-config libassimp-dev libglfw3-dev libopenal-dev libogg-dev libopus-dev libopusfile-dev
cd ~/git

}
_install_raygun_
# ----------------------------------------------------------------------------------------------------------------------




# cmake -GNinja -DCMAKE_BUILD_TYPE=Release -DPhysX_ROOT=$HOME/git/PhysX -B build
# ninja -C build
