# repoの環境をセットアップする
# いつかやる


# 僕の環境のrepoを持ってくる
mkdir -p work
cd work
repo init -u https://github.com/flatmonster/manifest.git -m qemu_v8.xml

# repoに記載された環境を作る
repo sync -j4


# <project path="optee_client"         name="flatmonster/optee_client.git" />
# <project path="optee_os"             name="flatmonster/optee_os.git" />
# <project path="optee_examples"       name="flatmonster/optee_examples.git" />
# <project path="qemu"                 name="qemu/qemu.git"     revision="refs/tags/v7.0.0" clone-depth="1" />
# <project path="build"                name="OP-TEE/build.git">

git clone --recursive https://github.com/flatmonster/build.git &
git clone --recursive https://github.com/flatmonster/optee_client.git &
git clone --recursive https://github.com/flatmonster/optee_os.git &
git clone --recursive https://github.com/flatmonster/optee_examples.git &
# git clone --depth 1 --recursive https://github.com/flatmonster/qemu.git &
git clone  --depth 1 --recursive https://github.com/qemu/qemu.git -b v7.0.0 &

cp build/qemu_v8.mk build/Makefile
cd build
make -j2 toolchains
