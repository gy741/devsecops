#!/bin/bash

# gitleaks 설치
wget https://github.com/gitleaks/gitleaks/releases/download/v8.16.3/gitleaks_8.16.3_linux_x64.tar.gz
tar -xzf gitleaks_8.16.3_linux_x64.tar.gz
sudo mv gitleaks /usr/local/bin/
rm -rf gitleaks_8.16.3_linux_x64.tar.gz

# 노출 키 테스트 저장소
git clone https://github.com/trufflesecurity/test_keys

# 테스트 명령어 : gitleaks detect --source test_keys/ -v
