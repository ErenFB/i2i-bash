#!/bin/bash

factorial() {
  local n=$1
  local result=1
  for (( i=1; i<=n; i++ )); do
    result=$((result * i))
  done
  echo $result
}

echo "Input calculation operand (+, -, *, /, %, !):"
read operand

if [ "$operand" == "!" ]; then
  echo "Input number:"
  read num1
  result=$(factorial $num1)
else
  echo "Input number1:"
  read num1
  echo "Input number2:"
  read num2

  case $operand in
    +) result=$((num1 + num2)) ;;
    -) result=$((num1 - num2)) ;;
    \*) result=$((num1 * num2)) ;;
    /) result=$((num1 / num2)) ;;
    %) result=$((num1 % num2)) ;;
    *) echo "Invalid operand"; exit 1 ;;
  esac
fi

echo "Result: $result"
