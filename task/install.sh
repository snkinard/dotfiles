#!/bin/bash

script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# install the timewarrior beta: https://taskwarrior.org/docs/timewarrior/download.html
mkdir -p $script_dir/tmp
cd $script_dir/tmp
curl -O http://taskwarrior.org/download/timew-1.0.0.beta1.tar.gz
tar xzf timew-1.0.0.beta1.tar.gz
cd timew-1.0.0.beta1
cmake -DCMAKE_BUILD_TYPE=release .
make
sudo make install

# install the timewarrior hook for taskwarrior: https://taskwarrior.org/docs/timewarrior/taskwarrior.html
cp ext/on-modify.timewarrior ~/.task/hooks/
chmod +x ~/.task/hooks/on-modify.timewarrior

# cleanup
cd $script_dir
rm -rf tmp

$script_dir/update.sh
