/*
profile provider - used to implement a time-based counter
it is able to create new probes beased on the descriptions in the program

tick-nsec probe for some integer n = creates a probe that fires every n secs

D variables can be created by simply using them in a program statement
*/

dtrace:::BEGIN
{
    i = 0;
    trace(i);
}

profile:::tick-1sec
{
    i = i + 1;
    trace(i);
}

dtrace:::END
{
    trace(i);
}
