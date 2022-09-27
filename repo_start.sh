# repoの環境をセットアップする
# いつかやる


# 僕の環境のrepoを持ってくる
repo init -u https://github.com/flatmonster/manifest.git -m qemu_v8.xml

# repoに記載された環境を作る
repo sync -j4


# <project path="optee_client"         name="flatmonster/optee_client.git" />
# <project path="optee_os"             name="flatmonster/optee_os.git" />
# <project path="optee_examples"       name="flatmonster/optee_examples.git" />
# <project path="qemu"                 name="qemu/qemu.git"     revision="refs/tags/v7.0.0" clone-depth="1" />

git clone --recursive https://github.com/flatmonster/optee_client.git
git clone --recursive https://github.com/flatmonster/optee_os.git
git clone --recursive https://github.com/flatmonster/optee_examples.git
git clone --recursive https://github.com/flatmonster/qemu.git -b v7.0.0 --depth 1
