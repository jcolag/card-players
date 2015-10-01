#!/bin/sh
# Note that this script expects its parameter to refer to a comma-delimited
# file that fits the AttaCard project's layout.
# 
# Output is to standard output.  Expected execution is something like:
#   sh generate_seeds.sh cards.csv >> priv/repo/seeds.exs

count=-1
while IFS=, read -r title attrl valuel attrr valuer quote
do
  echo "CardPlayers.Repo.insert!\(%Card{image_number: $count, title: \"$title\", left_attribute: \"$attrl\", left_value: $valuel, right_attribute: \"$attrr\", right_value: $valuer, quote: \"$quote\"}\)"
  count=$((count + 1))
done < "$1" | tail --lines=+2

