; DAY22の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; DAY22 / 個別ルートへの入口
*start
[if exp="f.storyV6.route==='airan'"]
    [jump storage="22_airan.ks" target="*start"]
[elsif exp="f.storyV6.route==='akehiru'"]
    [jump storage="22_akehiru.ks" target="*start"]
[elsif exp="f.storyV6.route==='momona'"]
    [jump storage="22_momona.ks" target="*start"]
[elsif exp="f.storyV6.route==='setsu'"]
    [jump storage="22_setsu.ks" target="*start"]
[else]
    [jump storage="medic.ks" target="*evening"]
[endif]
[s]
