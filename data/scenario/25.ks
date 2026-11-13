; DAY25の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; DAY25 / 個別ルートへの入口
*start
[if exp="f.storyV6.route==='momona'"]
    [jump storage="25_momona.ks" target="*start"]
[elsif exp="f.storyV6.route==='setsu'"]
    [jump storage="25_setsu.ks" target="*start"]
[else]
    [jump storage="medic.ks" target="*evening"]
[endif]
[s]
