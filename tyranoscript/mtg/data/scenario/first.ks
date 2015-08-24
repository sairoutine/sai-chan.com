;背景とキャラクター操作を簡略化するライブラリの呼び出し
; [call target=*start storage="tyrano.ks"]

*start
;-------------------------------------
; ブラウザタイトル設定
;-------------------------------------
[title name="東方MTG"]

;-------------------------------------
; イントロの注意書き
;-------------------------------------
本作品は東方Projectの二次創作です。[r]
この作品に登場する東方キャラには[r]
二次設定や作者独自の解釈が存在します。[r][r]

それでも構わないという方のみ[r]
そのまま先にお進みくださいませ。[l][cm]

;-------------------------------------
; メッセージウィンドウの表示
;-------------------------------------
; メッセージウィンドウの名前表示部分
[ptext name="chara_name_area" layer=message0 width="200" color=white x=40 y=320 size=26]
[chara_config ptext="chara_name_area"]
; メッセージウィンドウ本体
[position layer=message0 page=fore margint="30" marginl="30" marginr="30" marginb="30"]
[position width=500 height=100 top=370 left=120]

; キャラ画像表示
[chara_new name="yuko" storage="http://lohas.nicoseiga.jp/thumb/2838532i?" jname="ゆうこ" width=100 height=100]
[chara_show name="yuko" top=370 left=20]

; 背景画像表示
[bg storage=http://media.wizards.com/images/magic/daily/td/td190_evo.jpg time=1]

; メッセージ2
[position layer=message1  height=100 width=140 top=0 left=550]
@layopt layer=message1 visible=true
; [eval exp="f.name=霊夢"]
[eval exp="f.LP=20"]
[eval exp="f.hand=7"]
[current layer="message1" ]
;[emb exp="f.name"][r]
LP:[emb exp="f.LP"][r]
手札:[emb exp="f.hand"]
;-------------------------------------
; 紙芝居終了
;-------------------------------------
[s]
