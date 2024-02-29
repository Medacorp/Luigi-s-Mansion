execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},tag=show_health] run tag @s add catching_king_boo
execute if entity @s[scores={MusicGroup=0,MusicType=18},tag=catching_king_boo] run function luigis_mansion:other/music/set/force/catching_king_boo
execute if entity @s[scores={MusicGroup=0,MusicType=35},tag=!catching_king_boo] run function luigis_mansion:other/music/set/force/king_boo_battle_skip_intro
tag @s remove catching_king_boo
