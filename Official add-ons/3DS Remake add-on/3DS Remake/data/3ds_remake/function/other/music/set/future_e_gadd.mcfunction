function #3ds_remake:other/music/cannot_overwrite/future_e_gadd
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function 3ds_remake:other/music/set/force/future_e_gadd
tag @s remove cancel