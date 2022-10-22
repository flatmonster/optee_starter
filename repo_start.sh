# repoの環境をセットアップする
# いつかやる


# 僕の環境のrepoを持ってくる
mkdir -p work
cd work
repo init -u https://github.com/flatmonster/manifest.git -m qemu_v8.xml -b optee_3.18.0
#repo init -u https://github.com/flatmonster/manifest.git -m qemu_v8.xml -b optee_3.18.0-darknetz

# repoに記載された環境を作る
repo sync -j4


# cp build/qemu_v8.mk build/Makefile
# cd build
# make -j2 toolchains
