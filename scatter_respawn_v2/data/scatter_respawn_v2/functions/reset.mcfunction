kill @e[tag=sr_MapCenter]
scoreboard objectives remove sr_ingame
scoreboard objectives remove sr_timer
scoreboard objectives remove sr_timerT
scoreboard objectives remove sr_timerS
scoreboard objectives remove sr_timerM
scoreboard objectives remove sr_timer20
scoreboard objectives remove sr_timer60
scoreboard objectives remove sr_posx
scoreboard objectives remove sr_posy
scoreboard objectives remove sr_posz
scoreboard objectives remove sr_people
scoreboard objectives remove sr_together
tag @e remove sr_observer
tag @e remove sr_player
tag @e remove sr_now_player
tag @e remove sr_withinrange
bossbar remove minecraft:display_timer
gamemode creative @a

data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=1},limit=1] CustomNameVisible set value 1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=2},limit=1] CustomNameVisible set value 1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=3},limit=1] CustomNameVisible set value 1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=4},limit=1] CustomNameVisible set value 1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=5},limit=1] CustomNameVisible set value 1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=6},limit=1] CustomNameVisible set value 1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=7},limit=1] CustomNameVisible set value 1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=8},limit=1] CustomNameVisible set value 1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=9},limit=1] CustomNameVisible set value 1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=10},limit=1] CustomNameVisible set value 1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=11},limit=1] CustomNameVisible set value 1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=12},limit=1] CustomNameVisible set value 1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=13},limit=1] CustomNameVisible set value 1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=14},limit=1] CustomNameVisible set value 1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=15},limit=1] CustomNameVisible set value 1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=16},limit=1] CustomNameVisible set value 1

tellraw @a ["",{"text":"\u5404\u30d7\u30ec\u30a4\u30e4\u30fc\u306e\u30ea\u30b9\u30dd\u30fc\u30f3\u5730\u70b9\u306btp\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=1},limit=1]"}},{"selector":"@a[scores={sr_player=1}]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=1},limit=1]"}},{"text":"]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=1},limit=1]"}},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=2},limit=1]"}},{"selector":"@a[scores={sr_player=2}]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=2},limit=1]"}},{"text":"]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=2},limit=1]"}},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=3},limit=1]"}},{"selector":"@a[scores={sr_player=3}]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=3},limit=1]"}},{"text":"]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=3},limit=1]"}},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=4},limit=1]"}},{"selector":"@a[scores={sr_player=4}]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=4},limit=1]"}},{"text":"]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=4},limit=1]"}},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=5},limit=1]"}},{"selector":"@a[scpres={sr_player=5}]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=5},limit=1]"}},{"text":"]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=5},limit=1]"}},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=6},limit=1]"}},{"selector":"@a[scores={sr_player=6}]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=6},limit=1]"}},{"text":"]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=6},limit=1]"}},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=7},limit=1]"}},{"selector":"@a[scores={sr_player=7}]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=7},limit=1]"}},{"text":"]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=7},limit=1]"}},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=8},limit=1]"}},{"selector":"@a[scores={sr_player=8}]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=8},limit=1]"}},{"text":"]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=8},limit=1]"}},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=9},limit=1]"}},{"selector":"@a[scores={sr_player=9}]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=9},limit=1]"}},{"text":"]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=9},limit=1]"}},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=10},limit=1]"}},{"selector":"@a[scores={sr_player=10}]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=10},limit=1]"}},{"text":"]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=10},limit=1]"}},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=11},limit=1]"}},{"selector":"@a[scores={sr_player=11}]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=11},limit=1]"}},{"text":"]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=11},limit=1]"}},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=12},limit=1]"}},{"selector":"@a[scores={sr_player=12}]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=12},limit=1]"}},{"text":"]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=12},limit=1]"}},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=13},limit=1]"}},{"selector":"@a[scores={sr_player=13}]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=13},limit=1]"}},{"text":"]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=13},limit=1]"}},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=14},limit=1]"}},{"selector":"@a[scores={sr_player=14}]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=14},limit=1]"}},{"text":"]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=14},limit=1]"}},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=15},limit=1]"}},{"selector":"@a[scores={sr_player=15}]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=15},limit=1]"}},{"text":"]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=15},limit=1]"}},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=16},limit=1]"}},{"selector":"@a[scores={sr_player=16}]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=16},limit=1]"}},{"text":"]","clickEvent":{"action":"run_command","value":"/tp @p @e[tag=sr_SpawnMarker,scores={sr_player=16},limit=1]"}}]

function scatter_respawn_v2:book_reload