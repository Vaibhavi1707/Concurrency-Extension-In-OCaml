open Semaphore
open Thread

let sem = sem_create;;
let s1 = sem_post 1;;

let say s = print_endline s;;

let s2 = sem_wait 1;;

let thread1 = Thread.create_thread "Hello There"; say "I am thread 1";;
let thread2 = Thread.create_thread "Hello There"; say "I am thread 2";;
