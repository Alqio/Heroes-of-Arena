/// pack(...values)
var arr = array_create(argument_count);
for (var i = 0; i < argument_count; i++) arr[i] = argument[i];
return arr;
