/*
D does not have control flow structures such as if-statements and loops

predicates - logical expressions that can prefix program clauses and provide
the ability to conditionally trace data and modify control flow

they can effectively be used to create a logical flow
*/


dtrace:::BEGIN
{
    i = 10;
}

profile:::tick-1sec
/i > 0/
{
    trace(i--);
}

profile:::tick-1sec
/i == 0/
{
    trace("blastoff!");
    exit(0);
}
