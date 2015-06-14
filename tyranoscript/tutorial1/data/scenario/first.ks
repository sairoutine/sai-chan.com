;背景とキャラクター操作を簡略化するライブラリの呼び出し
; [call target=*start storage="tyrano.ks"]

*start
;-------------------------------------
; ブラウザタイトル設定
;-------------------------------------
[title name="霊夢と魔理沙のティラノスクリプト入門"]

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
[position width=600 height=150 top=320 ]

;-------------------------------------
; キャラクター登録
;-------------------------------------

; - メモ -
; 画像サイズ1/2
; top=100は固定の方が良い
; 横ポジションは必要調整
; reflect=true で横反転

; - 魔理沙 -
; 魔理沙キャラ設定
[chara_new name="marisa" storage="marisa/main.png" width="329" height="575" jname="魔理沙"]
; 魔理沙笑顔
[chara_face name="marisa" face="smile" storage="marisa/smile.png"]
; 魔理沙困惑
[chara_face name="marisa" face="puzzle" storage="marisa/puzzle.png"]
; 魔理沙驚き
[chara_face name="marisa" face="surprise" storage="marisa/surprise.png"]
; 魔理沙冷静1
[chara_face name="marisa" face="cool_m1" storage="marisa/cool_m1.png"]
; 魔理沙冷静2
[chara_face name="marisa" face="cool_m2" storage="marisa/cool_m2.png"]




; - 霊夢 -
; 霊夢キャラ設定
[chara_new name="reimu" storage="reimu/main.png" width="336" height="585" jname="霊夢"]
; 霊夢笑顔
[chara_face name="reimu" face="smile" storage="reimu/smile.png"]
; 霊夢冷静h
[chara_face name="reimu" face="cool_h" storage="reimu/cool_h.png"]
; 霊夢冷静1
[chara_face name="reimu" face="cool_m1" storage="reimu/cool_m1.png"]



;-------------------------------------
; 紙芝居スタート
;-------------------------------------

; 背景設定
[bg storage=tokonoma.jpg time=3000]

; 魔理沙登場
[chara_show name="marisa" top=100 left=0 time=1000]
; 霊夢登場
[chara_show name="reimu" top=100 left=350 time=1000]

#reimu:smile
霊夢と[l][cm]

#marisa:smile
魔理沙の[l][cm]

#霊夢＆魔理沙
[font size="30"]
ティラノスクリプト入門！[l][cm]
[resetfont]

; 霊夢と魔理沙の表情を戻す
[chara_mod name="reimu" face="default" time=0]
[chara_mod name="marisa" face="default" time=0]

#reimu:default
この作品では、プリティーキューティーな[r]
結界の巫女こと博霊霊夢と[l][cm]

#marisa:default
弾幕はパワー、撃滅の高火力魔法使い[r]
霧雨魔理沙で[l][cm]

; 二人同時に笑顔
[chara_mod name="reimu" face="smile" time=0]
[chara_mod name="marisa" face="smile" time=0]
#reimu
ティラノスクリプトの紹介をしちゃうわよ！[l][cm]

; 霊夢だけ表情戻す
[chara_mod name="reimu" face="default" time=0]

#marisa:puzzle
それで霊夢、突然始まったこの企画だけど、[r]
ティラノスクリプトって何なんだぜ？[l][cm]

; 魔理沙戻す
[chara_mod name="marisa" face="default" time=0]

#reimu:cool_m1
ティラノスクリプトは[r]
ノベルゲームを作るためのゲームエンジンよ。[l][cm]

#reimu:default
みんなはノベルゲームってプレイしたこと[r]
あるかしら？[l][cm]

#reimu:default
外の世界では「ひぐらしのなく頃に」とか[r]
「かまいたちの夜」みたいなゲームとか[r]
流行ってるらしいわね[l][cm]

#reimu:smile
ティラノスクリプトを使うと、そうした[r]
ノベルゲームが簡単に作れちゃうってわけ！[l][cm]

#marisa:surprise
すごいのぜ！[l][cm]

; 魔理沙戻す
[chara_mod name="marisa" face="default" time=0]

#reimu:cool_m1
ティラノスクリプトがすごいのはどんな[r]
環境向けのアプリでも作れちゃう事。[l][cm]

#reimu:default
HTML5で動くからWinアプリ、Macアプリに[r]
することはもちろんの事、[l][cm]

#reimu:smile
今みたいにブラウザ上で遊べたり、[r]
さらにはiPhoneやAndroidでも遊べちゃうわ。[l][cm]

#marisa:cool_m2
このページをiPhoneやAndroidで開いたら[r]
そのままプレイできちゃうぜ。[l][cm]

[chara_mod name="reimu" face="default" time=0]
[chara_mod name="marisa" face="default" time=0]

#reimu:default
アプリ化も簡単だからAppStoreやGooglePlay[r]
でも販売できるわ。[l][cm]

#marisa:puzzle
でも霊夢、ゲームを作るって[r]
難しいんじゃないのか？[r]
私プログラミングとか絶対無理だぜ。[l][cm]

#reimu:default
心配ご無用よ。ティラノスクリプトは[r]
「KAG3/吉里吉里」形式のスクリプトで[r]
記述できるわ。[l][cm]

#reimu:cool_h
この作品みたいにキャラクター2人が[r]
会話するだけならスクリプトの学習に半日、[r]
ゲームの枠を作るのに半日でできちゃうわ[l][cm]

#reimu:cool_m1
キャラクターのセリフを考える方が[r]
時間がかかったくらいよ[l][cm]

#marisa:cool_m2
感嘆の吐息しかでないのぜ[l][cm]

#reimu:default
今まで東方でこういったキャラクター同士の[r]
会話を二次創作で作るとなると[l][cm]

#reimu:cool_m1
小説を書いてアップロードするとか、動画を[r]
作ってニコニコにアップロードするしかなくて[r]
すごくハードルが高い行為だったけど[l][cm]

#marisa:smile
ティラノスクリプトなら簡単に[r]
二次創作が作れるってわけだな[l][cm]

; 霊夢と魔理沙の表情を戻す
[chara_mod name="reimu" face="default" time=0]
[chara_mod name="marisa" face="default" time=0]

#reimu
今日はティラノスクリプトの概要を説明したわ。[r]
次回は実際にティラノスクリプトで何ができるか[r]
紹介しましょう。[l][cm]

#marisa:smile
楽しみだぜ[l][cm]

; 霊夢と魔理沙の表情を戻す
[chara_mod name="reimu" face="default" time=0]
[chara_mod name="marisa" face="default" time=0]

#reimu
それではみなさん[l][cm]

; 二人とも笑顔
[chara_mod name="reimu" face="smile" time=0]
[chara_mod name="marisa" face="smile" time=0]

#霊夢＆魔理沙
[font size="30"]
ありがとうございました！[l][cm]
[resetfont]

;-------------------------------------
; 使用素材表示
;-------------------------------------

; メッセージウィンドウを非表示
[layopt layer=message0 visible=false]

; 裏ページを作成
[backlay]
[freeimage layer=0 page=back]
[freeimage layer="base" page=back]

; 裏ページへトランジション
[trans time=3000]
[wt]

; メッセージウィンドウを再設定
[position layer=message0 page=fore margint="30" marginl="30" marginr="30" marginb="30"]
[position width=600 height=300 top=0]
[layopt layer=message0 visible=true]

#
使用素材[r]
・霊夢/魔理沙立ち絵[r]
はるか様[r]
http://seiga.nicovideo.jp/seiga/im3189645[l][cm]

;-------------------------------------
; 紙芝居終了
;-------------------------------------
[s]
