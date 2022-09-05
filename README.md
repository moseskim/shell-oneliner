# 쉘 원라이너 160문제 샘플 저장소

이 책은 제이펍에서 출간한 '[쉘 원라이너 160문제]()'의 샘플 저장소입니다.

```
$ git clone https://github.com/moseskim/shell-oneliner.git
```

가능하다면 fork를 하는 것을 권장합니다.

## 이 저장소의 역할

- 문제에서 이용하는 데이터 제공
- 문의 접수([issue](https://github.com/moseskim/shell-oneliner/issues))
- 정정 내용 게제
- 해답 및 다른 풀이의 텍스트 데이터 제공(`answer` 디렉터리 참조)
  - 다양한 다른 풀이의 풀 리퀘스트는 대환영입니다([예](https://github.com/shellgei/shellgei160/pull/34)）

기타 쉘 예능의 일반적인 정보는 [쉘 예능 정보 관련 사이트(일본어)](https://github.com/moseskim/shell-oneliner/wiki/%EC%89%98-%EC%98%88%EB%8A%A5-%EA%B4%80%EB%A0%A8-%EC%A0%95%EB%B3%B4-%EC%82%AC%EC%9D%B4%ED%8A%B8-%EB%AA%A8%EC%9D%8C)를 참조합니다.

## 알림

* [문제 23에 오타가 있었습니다](https://github.com/shellgei/shellgei160/issues/6). 정정해서 업로드했습니다. (20211004）
* 전자 서적 버전의 일부에서 슬래시 누락을 발견했습니다. 대응하고 있습니다. (20211004）
    * 대응 완료.（20211007） 

## 정정

### 2쇄 (일본어)까지

|페이지|위치|수정전|수정후|발견자/상황|코멘트(주로 우에다)|
|-----|--------------------|-------------|----------------|----------|----------|
|p.105  |問題文4行目|このシェルの挙動もシグナルに関係しています。|これと同じような挙動はシグナルでも実現できます。| [issue6](https://github.com/shellgei/shellgei160/issues/6)|たぶん私が筆を入れたときに埋め込み -> みんなスルーという状況で発生したような気が・・・|
|p.106 |本文の3行目|Ctrl＋Qで発行されるシグナル|Ctrl＋Qと同じ働きをするシグナル|同上|同上|
|p.127 |問題文のコードの10行目|`\N`|`\d`|[issue8](https://github.com/shellgei/shellgei160/issues/8)|あれ・・・なんでだろう・・・|
|p.129 |1番目のコードボックスと本文1行目|`\N`|`\d`|同上|同上|
|p.130 |練習問題の問題文のコードの7行目|東から始まり|東京から始まり|[issue9](https://github.com/shellgei/shellgei160/issues/9)|不注意でした。|
|p.140 |脚注16のURL|https://docs.ruby-lang.org/ja/latest/docspec=2fregexp.html|https://docs.ruby-lang.org/ja/latest/doc/spec=2fregexp.html|[issue10](https://github.com/shellgei/shellgei160/issues/10)|すみません!|
|p.247 |リスト5.3 3行目|2020年1月1日|2020年8月1日|[issue23](https://github.com/shellgei/shellgei160/issues/23)|不注意でした。|
|p.248 |解答例のコードの1行目|`,$0`|削除|[issue23](https://github.com/shellgei/shellgei160/issues/23)|間違いですが残っていても動くのでスルーされたようです。|
|p.266| 2番目のコードブロック | `$ split -b 1000 -d image.bmp image.bmp.` | `$ split -b 1000 image.bmp image.bmp.` | [issue27](https://github.com/shellgei/shellgei160/issues/27) | `-d`を使った没案の一部消し忘れのようです。 |
|p.266| 2番目のコードブロックの直後の1行 | その番号から数字が開始するようになります。 | その引数の番号から数字が開始するようになります。 | [issue27](https://github.com/shellgei/shellgei160/issues/27) | 同上 |

## mac에서의 동작에 관한 정보

* https://github.com/shellgei/shellgei160/issues?q=is%3Aissue+label%3Amac+ (일본어)

## issueに寄せられたコメント

* [正規表現の`{,n}`という指定について](https://github.com/shellgei/shellgei160/issues/7)
* [UTF-32BEについて](https://github.com/shellgei/shellgei160/issues/28)

## 참고 사이트

- 역서 정보 페이지(제이펍): TBD
- 원서 정보 페이지(기술평론사): https://gihyo.jp/book/2021/978-4-297-12267-6
- 쉘 예능 정보 종합 사이트: https://shellgei.github.io/info/

