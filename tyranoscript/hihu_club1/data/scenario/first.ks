;背景とキャラクター操作を簡略化するライブラリの呼び出し
; [call target=*start storage="tyrano.ks"]

*start
;-------------------------------------
; ブラウザタイトル設定
;-------------------------------------
[title name="秘封倶楽部ときさらぎ駅"]

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


; - メリー -
; メリーキャラ設定
[chara_new name="merry" storage="merry/main.png" width="326" height="585" jname="マエリベリー・ハーン"]
; 霊夢笑顔
;[chara_face name="reimu" face="smile" storage="reimu/smile.png"]
; 霊夢冷静h
;[chara_face name="reimu" face="cool_h" storage="reimu/cool_h.png"]
; 霊夢冷静1
;[chara_face name="reimu" face="cool_m1" storage="reimu/cool_m1.png"]

; - 蓮子 -
; 蓮子キャラ設定
[chara_new name="renko" storage="renko/main.png" width="342" height="600" jname="宇佐見蓮子"]
; 魔理沙笑顔
;[chara_face name="marisa" face="smile" storage="marisa/smile.png"]
; 魔理沙困惑
;[chara_face name="marisa" face="puzzle" storage="marisa/puzzle.png"]
; 魔理沙驚き
;[chara_face name="marisa" face="surprise" storage="marisa/surprise.png"]
; 魔理沙冷静1
;[chara_face name="marisa" face="cool_m1" storage="marisa/cool_m1.png"]
; 魔理沙冷静2
;[chara_face name="marisa" face="cool_m2" storage="marisa/cool_m2.png"]






;-------------------------------------
; 紙芝居スタート
;-------------------------------------

きさらぎ駅って知ってる？[cm]


; 背景設定
[bg storage=cafe.jpg time=3000]

; メリー登場
[chara_show name="merry" top=100 left=0 time=1000]
; 蓮子登場
[chara_show name="renko" top=100 left=350 time=1000]

#merry:default
何よ、きさらぎ駅って

#renko:default
あら、聞いたことないかしら？

#merry
ないわよ。
この辺にそんな名前の駅ないでしょ。


#renko
JR東海道本線の京都駅、20時14分発の米原行きの電車に
乗ると、電車の様子がおかしくなって
きさらぎ駅っていう不思議な駅に到着するらしいの。

#merry
よくある異世界迷い込み系の話じゃないの

#renko
「事実は小説より奇なり」よ。
気にならないかしら？結界が見える程度の能力を持つ
あなたにとって。

#merry
……もう。

#renko
決まりね！それじゃ今日の20時に京都駅に集合！

#merry
ちょっと！乗るつもりなの！？

#renko
あら、事実をこの目で確かめずして秘封倶楽部は名乗れないわ。

#merry
そういう話って迷い込んだ人たちは帰ってこず……って
オチじゃ……

#renko
紙を燃やすと戻れるらしいの。

#merry
紙？

#renko
古来より人類は火を起こして獣を追い払い、食事を作り、
そしてそうした原始的な火の扱いはやがて呪術に使われるようになったわ。

#renko
電車のような近代的アイテムと火のような原始的まじないが
交わるなんて面白いわ！

#merry
……。

[bg storage=station.jpg time=3000]

#renko
それで、その都市伝説の詳しい概要だけれども

#renko
いつも通りの家路、きっとお仕事で疲れてたんでしょうね。
電車に乗った後は携帯電話でも弄りながら自分の世界へ。

#renko
ふと気がつけば周囲に乗客はおらず、窓の外は見たこともない
風景。

#renko
電車のアナウンスは終点を告げ、降りてみるとそこは
まったく知らない駅。

#merry
携帯電話を見てみれば圏外でどこにも繋がらずってところかしら

#renko
まあそんなところね。

#merry
あら、電車が来たわよ。件の20時14分発、米原行き。

[bg storage=train.jpg time=3000]

#merry
(東海道本線新快速米原行き)

#merry
(米原到着まで1時間6分)

#merry
(そもそも私達、こうして意識もはっきりして電車にのってるんだし、
変な駅になんて迷い込まないんじゃないかしら)

#merry
(蓮子は境界の歪みだなんていうけれど)

#merry
(電車のような大型の物質が入るような大きさの境界の歪みが、
 線路上に人々のウワサになる程度の頻度で出現する)

#merry
(そんな事ありえるのかしら)

#merry



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
・メリー/蓮子立ち絵[r]
はるか様[r]
http://seiga.nicovideo.jp/seiga/im3189645[l][cm]

;-------------------------------------
; 紙芝居終了
;-------------------------------------
[s]
