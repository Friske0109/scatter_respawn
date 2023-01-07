execute at @a run execute store result score @p sr_posx run data get entity @p Pos[0]
execute at @a run execute store result score @p sr_posy run data get entity @p Pos[1]
execute at @a run execute store result score @p sr_posz run data get entity @p Pos[2]
execute at @a run scoreboard players operation @p sr_posx -= @e[tag=sr_MapCenter,limit=1] sr_posx
execute at @a run scoreboard players operation @p sr_posy -= @e[tag=sr_MapCenter,limit=1] sr_posy
execute at @a run scoreboard players operation @p sr_posz -= @e[tag=sr_MapCenter,limit=1] sr_posz

execute at @a run title @p actionbar ["",{"text":"\u5ea7\u6a19: x "},{"score":{"name":"@p","objective":"sr_posx"}},{"text":" y "},{"score":{"name":"@p","objective":"sr_posy"}},{"text":" z "},{"score":{"name":"@p","objective":"sr_posz"}}]