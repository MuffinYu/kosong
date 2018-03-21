```bash
#!/bin/bash

rm -rf build.log
git pull origin master | tee /home/kosong/space/kosong_blog/build.log
hexo g --deploy 2>&1 | tee /home/kosong/space/kosong_blog/build.log
