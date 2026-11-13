; DAY21の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; DAY21 / 個別ルートへの入口
*start
[if exp="f.storyV6.route==='airan'"]
    [jump storage="21_airan.ks" target="*start"]
[elsif exp="f.storyV6.route==='akehiru'"]
    [jump storage="21_akehiru.ks" target="*start"]
[elsif exp="f.storyV6.route==='momona'"]
    [jump storage="21_momona.ks" target="*start"]
[elsif exp="f.storyV6.route==='setsu'"]
    [jump storage="21_setsu.ks" target="*start"]
[else]
    [jump storage="medic.ks" target="*evening"]
[endif]
[s]
