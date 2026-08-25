#! /bin/bash

get_prime_factors() {
    local n=$1
    local largest=()

    while (( n % 2 == 0)); do
    largest=(2)
    (( n /= 2))
    done

    local factor=3
    while (( factor * factor <= n )); do
        while (( n % factor == 0 )); do
            largest=($factor)
            (( n /= factor))
        done
        (( factor += 2 ))
    done

    if (( n > 1 )); then
        largest=($n)
    fi
    echo "$largest"
}

number=$1
echo "The largest prime factors of $number is: $(get_prime_factors $number)"