# repoの環境をセットアップする
# いつかやる


# 僕の環境のrepoを持ってくる
repo init -u https://github.com/flatmonster/manifest.git -m qemu_v8.xml

# repoに記載された環境を作る
repo sync -j4
