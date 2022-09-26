#!/bin/bash
# 色々なレポジトリとかサブモジュールを使っていて、それらを一括管理する方法がわからなかったのでやるやつ
# 絶対一番トップのディレクトリから実行すること

# git_bundle checkout {branch name} {tag}
# git_bundle tag      {tag name}    {message}

# Todo
# ブランチ、タグの一括作成
# ブランチの一括変更
# タグの一括変更

# 変数
CLIENT_PATH="./optee_client"
EXAMPLES_PATH="./optee_examples"
OS_PATH="./optee_os"
DARKNETZ_PATH="./optee_examples/darknetz"


if [ $# -eq 0 ]; then
  echo sh git_bundle {checkout, tag} argument
  exit 0
fi

# 第1引数がなんなのか確認

if [ $1 = "checkout" ]; then
  echo checkout
  if [ 2 -eq $# ]; then 
    cd $CLIENT_PATH
    git checkout $2
    cd -
    cd $EXAMPLES_PATH
    git checkout $2
    cd -
    cd $OS_PATH
    git checkout $2
    cd -
    cd $DARKNETZ_PATH
    git checkout $2
    cd -
  elif [ 3 -eq $# ]; then 
    cd $CLIENT_PATH
    git checkout -b $2 $3
    cd -
    cd $EXAMPLES_PATH
    git checkout -b $2 $3
    cd -
    cd $OS_PATH
    git checkout -b $2 $3
    cd -
    cd $DARKNETZ_PATH
    git checkout -b $2 $3
    cd -
  else
    echo can not finish
    echo $1 done  \'git checkout -b $2 $3 \'
  fi

elif [ $1 = "tag" ]; then
    # (number < $#)
  if [ 3 -eq $# ]; then
    echo I will
    echo \> git tag -a $2 -m \"$3\"
    cd $CLIENT_PATH
    git tag -a $2 -m "$3"
    cd -
    cd $EXAMPLES_PATH
    git tag -a $2 -m "$3"
    cd -
    cd $OS_PATH
    git tag -a $2 -m "$3"
    cd -
    cd $DARKNETZ_PATH
    git tag -a $2 -m "$3"
    cd -
  elif [2 -eq $# ]; then 
    echo I will
    echo \> git tag $2
    cd $CLIENT_PATH
    git tag -a $2
    cd -
    cd $EXAMPLES_PATH
    git tag -a $2
    cd -
    cd $OS_PATH
    git tag -a $2
    cd -
    cd $DARKNETZ_PATH
    git tag -a $2
    cd -

  else 
    echo I will
    echo \> git tag -a $2 -m \"$3\"
  fi

else
  echo sh git_bundle {checkout, tag} argument
  exit 0
fi
