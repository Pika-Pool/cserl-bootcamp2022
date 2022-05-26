1. `digitsum.sh` uses the method of:
    - taking the *mod 10* of number and adding to sum
    - dividing the number by 10
    - repeating until number is 0
a simple C-style method

2. `digitsum-2.sh` uses the `fold` command, to split the string into char array and then adding each element to sum
    - This can also be done using the `grep` command like so:
    ```sh
    arr=( $(echo "434" | grep -o .) )
    ```
