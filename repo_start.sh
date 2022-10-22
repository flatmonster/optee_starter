# repoの環境をセットアップする
# いつかやる


# 僕の環境のrepoを持ってくる
repo init -u https://github.com/flatmonster/manifest.git -m qemu_v8.xml -b optee_3.18.0
#repo init -u https://github.com/flatmonster/manifest.git -m qemu_v8.xml -b optee_3.18.0-darknetz

# repoに記載された環境を作る
repo sync -j4


cd build
make -j2 toolchains

echo ""
echo ""
echo "How to build OP-TEE "
echo "build$ make run`nproc`"
