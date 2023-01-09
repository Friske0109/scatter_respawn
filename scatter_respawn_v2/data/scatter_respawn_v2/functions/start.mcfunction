#playcount

scoreboard players add @e[tag=sr_PlayCounter] sr_playcount 1
execute at @e[tag=sr_MapCenter] run forceload add ~4096 ~4096 ~4096 ~4096
execute at @e[tag=sr_MapCenter] run tp @e[tag=sr_MapCenter] ~4096 ~ ~4096
function scatter_respawn_v2:player_tp

#MapCenter

summon minecraft:armor_stand 0 100 0 {NoGravity:true,Marker:ture,Invisible:true,Tags:["sr_MapCenter"]}
scoreboard players operation @e[tag=sr_MapCenter] sr_playcount = @e[tag=sr_PlayCounter] sr_playcount


#spawn_marker
kill @e[tag=sr_SpawnMarker]

#bossbar
bossbar add display_timer "残り時間"
bossbar set display_timer players @a
bossbar set display_timer max 3600
bossbar set display_timer style notched_6