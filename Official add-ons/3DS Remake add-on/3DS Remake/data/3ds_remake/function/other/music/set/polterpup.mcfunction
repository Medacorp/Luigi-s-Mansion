function #3ds_remake:other/music/cannot_overwrite/polterpup
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function 3ds_remake:other/music/set/force/polterpup
tag @s remove cancel