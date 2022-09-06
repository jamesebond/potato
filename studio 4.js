function oddsum (lst) {
    return is_null (lst) || is_null(tail(lst))
    ? 0
    :head(tail(lst))+ oddsum(tail(tail(lst)));
}


function evensum (lst) {
    return is_null (lst) ||is_null(tail(lst))
    ? 0
    :head(lst)+ evensum(tail(tail(lst)));
}


function sum (lst) {
return list (evensum(lst),oddsum(lst));
}

display_list(sum(list(1,2,3,4,5,0)));