export function add():i32 {
    let array:i32 = 0;
    let input:Array<i32> = [1,2,3,5];
    for(let i=0;i<4;i++){
        array +=input[i];
    }
    return array;
}

export function fib (n:i32):i32 {
    if (n < 2) {
      return 1
    }
    return fib(n - 2) + fib(n - 1);
}