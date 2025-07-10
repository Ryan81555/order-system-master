# Node.js 18 LTS 이미지 사용
FROM node:18

# 앱 디렉토리 생성
WORKDIR /app

# package.json, package-lock.json 복사
COPY package*.json ./

# 의존성 설치
RUN npm install

# 소스 복사
COPY . .

# Cloud Run은 $PORT 환경변수 사용
ENV PORT=8080

# 서버 실행
CMD ["node", "server.js"]