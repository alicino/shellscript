#!/bin/bash

clear

# -------------- MATRIX --------------------------------------

echo "Starting Matrix..."
sleep 2s

cmatrix & matrix=$!

sleep 5s

kill "$matrix"

clear



# --------------- ATENDEES -----------------------------------

# 1.a Searching the number of atendees in atendees.list file

echo Atendee
n_atendees=$(wc -l atendees.list | cut -b -2)
echo "$n_atendees"

sleep 1s
# 1.b Randomic number to choose the atendee

rand_atendee=$(shuf -i 1-$n_atendees -n 1)
echo "$rand_atendee"
rrand_atendee=$[ 1 + $[ RANDOM % $n_atendees ]]		# Using RANDOM command
echo $rrand_atendee

sleep 1s
# 1.c Printing the name at screen
x_ate=$(cat atendees.list | head -$rand_atendee | tail -1)	# shuf mode
x_rate=$(cat atendees.list | head -$rrand_atendee | tail -1)	# RANDOM mode
echo "$x_ate"
echo "$x_rate"

# ---------------- TOPIC -----------------------------------

# 2.a Searching the number of topics in topics.list file

echo Topic
n_topics=$(wc -l topics.list | cut -b -2)
echo "$n_topics"

sleep 1s
# 2.b Randomic number to choose the topic

rand_topic=$(shuf -i 1-$n_topics -n 1)
echo "$rand_topic"
rrand_topic=$[ 1 + $[ RANDOM % $n_topics ]]		# Using RANDOM command
echo $rrand_topic

sleep 1s
# 2.c Printing the topic at screen
cat topics.list | head -$rand_topic | tail -1		# shuf mode
cat topics.list | head -$rrand_topic | tail -1		# RANDOM mode


# ---------------- PLUBIC -----------------------------------

# 3.a Searching the number of topics in topics.list file

echo Public
n_public=$(wc -l public.list | cut -b -2)
echo "$n_public"

sleep 1s
# 3.b Randomic number to choose the public

rand_public=$(shuf -i 1-$n_public -n 1)
echo "$rand_public"
rrand_public=$[ 1 + $[ RANDOM % $n_public ]]		# Using RANDOM command
echo $rrand_public

sleep 1s
# 3.c Printing the public at screen
cat public.list | head -$rand_public | tail -1		# shuf mode
cat public.list | head -$rrand_public | tail -1		# RANDOM mode



# ---------------- WAY TO DO -----------------------------------

# 4.a Searching the number of ways in waytodo.list file

echo "Way to do" 
n_way=$(wc -l waytodo.list | cut -b -2)
echo "$n_way"

sleep 1s
# 3.b Randomic number to choose the public

rand_way=$(shuf -i 1-$n_way -n 1)
echo "$rand_way"
rrand_way=$[ 1 + $[ RANDOM % $n_way ]]		# Using RANDOM command
echo $rrand_way

sleep 1s
# 3.c Printing the public at screen
cat waytodo.list | head -$rand_way | tail -1		# shuf mode
cat waytodo.list | head -$rrand_way | tail -1		# RANDOM mode





now=$(date +%R:%S)
echo "$now	$x_ate	$x_ate" >> file_zero

echo "------"

date +%Y%m%d

# To play install libsox-fmt-all - (sudo apt install libsox-fmt-all)
# sudo apt install sox
# play Curt_Reply.mp3

# cmatrix
sleep 1s
echo "FIM"
