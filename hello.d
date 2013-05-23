/* trace: indicates that DTrace should record the argument ("hello, world")
when the BEGIN probe fires and then print it out

functions like trace and exit are provided by DTrace
*/

:BEGIN
{
    trace("hello, world");
    exit(0);
}
