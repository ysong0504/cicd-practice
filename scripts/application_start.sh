#!/bin/bash
# 작업 폴더안에 모든 권한을 부여
sudo chmod -R 777 /home/ec2-user/express-app

# github 파일이 저장되어있는 폴더로 이동
cd /home/ec2-user/express-app

# npm과 노드 경로 설정
export NVM_DIR="$HOME/.nvm"	
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm	
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)

# node modules 설치
npm install

# app.js 실행
node app.js > app.out.log 2> app.err.log < /dev/null & 