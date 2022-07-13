## 전제:
##   * 동작 환경: Ubuntu 18.04 LTS
##               ImageMagick 6.8.9-9
##   * store.txt -- 디지털 워터마크로 숨길 내용을 기술한 파일(512바이트 이하)
##   * apt install imagemagick <-- imagemagick 설치 완료
##   * xxd, dc 커맨드 이용

# ImageMagick으로 이미지를 준비한다(64x64 크기의 Bitmap, Alpha: off)
convert -size 64x64 -alpha off -seed 5454 plasma: image.bmp

# 이미지 헤더 크기를 얻는다
HEADER_SIZE=$(xxd -p -u -c 1 -s 10 -l 4 image.bmp | awk '{a[i++]=$0} END{for(j=i-1; j>=0;) printf a[j--]}' | dc -e'16i?p')

# 이미지 헤더만 다른 파일로 만든다
xxd -p -l "${HEADER_SIZE}" image.bmp | xxd -r -p > header.bmp

# 화소 정보만 다른 파일로 만든다
xxd -p -s "${HEADER_SIZE}" image.bmp | xxd -r -p > body.bmp

# 숨길 파일을 2진수로 만든다
xxd -b -c 1 store.txt | awk '{print $2}' | grep -o . > store.bit.txt

# 정보를 삽압할 sed 스크립트를 작성한다
xxd -p -c 1 body.bmp | awk 'NR%3==1{print NR}' | paste - store.bit.txt | awk 'NF==2{print}NF==1{print $1,0}' | awk '{print $1"s/.$/"$2"/"}' > store.sed

# body.bmp에 디지털 워터마크를 삽입한다
xxd -b -c 1 body.bmp | awk '{print $2}' | sed -f store.sed | tr -d '\n' |  dc -e2i -f- -eP > body_masked.bmp

# 후퇴시켰던 헤더와 이미지를 연결한다
cat header.bmp body_masked.bmp > image_masked.bmp

## 디지털 워터마크가 삽입된 파일 완성(되돌리는 방법은 책 참조)
## image_masked.bmp

# 임시 파일을 삭제한다
rm header.bmp body.bmp body_masked.bmp store.bit.txt store.sed
