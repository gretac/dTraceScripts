/*
Can run 2 virtual dtrace clients for the hello programs at the same time
these will operate independently using the same underlying instrumentation
*/

:BEGIN
{
    trace("hello2, world Greta");
    exit(0);
}
