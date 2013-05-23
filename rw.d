/*
Monitoring system calls, can filter them by a specific process ID

pid is a predefined DTrace variable that evaluates to the process ID associated
with the thread that fired the corresponding probe

Other predefined variables: errno, execname, pid, tid, probeprov, prebemod,
probefunc, probename
*/


/*syscall::read:entry,
syscall::write:entry*/

/*
:::entry
/pid == 8385/
{
    trace(pid);
    trace(execname);
}
*/


/*
The $1 label in the predicate allows user to specify the process of interest
as an argument to the script
*/

syscall::read:entry,
syscall::write:entry
/pid == $1/
{
    printf("%s(%d, 0x%x, %4d)", probefunc, arg0, arg1, arg2);
}

syscall::read:return,
syscall::write:return
/pid == $1/
{
    printf("\t\t = %d\n", arg1);
}
