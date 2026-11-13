; DAY24の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; DAY24 / 個別ルートへの入口
*start
[if exp="f.storyV6.route==='akehiru'"]
    [jump storage="24_akehiru.ks" target="*start"]
[elsif exp="f.storyV6.route==='momona'"]
    [jump storage="24_momona.ks" target="*start"]
[elsif exp="f.storyV6.route==='setsu'"]
    [jump storage="24_setsu.ks" target="*start"]
[elsif exp="f.storyV6.route==='airan'"]
    [jump storage="24_airan.ks" target="*start"]
[else]
    [jump storage="medic.ks" target="*evening"]
[endif]
[s]
