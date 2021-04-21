#!/bin/bash

current=$(cd $(dirname $0);pwd)
outdir=patch_files
srcdir=${current}/../src

function create_patch() {
  build_dir=$1
  package_name=$2

  cd ${build_dir}
  npm pack
  tmpdir=$(mktemp -d)
  mv ./*.tgz ${tmpdir}

  cd ${tmpdir}
  tar zxf ./*.tgz >/dev/null
  cp -a ./package/* ${current}/../node_modules/${package_name}/
  rm -rf ./*.tgz ./package

  cd ${current}/../
  yarn patch-package ${package_name} --patch-dir ${outdir}
}

create_patch ${srcdir}/create-react-app/packages/react-scripts react-scripts

create_patch ${srcdir}/react-app-rewired react-app-rewired

