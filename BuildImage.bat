@echo off

SET LocalImageName="fileserver"
SET RemoteImageName="YOUR IMAGE NAME"

docker build -t %LocalImageName% .
docker tag %LocalImageName% %RemoteImageName%
docker push %RemoteImageName%

pause





