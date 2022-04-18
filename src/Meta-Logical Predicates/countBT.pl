% Convert tree to a list and count the list. Use an accumulator for that
countBT(Tree,Count) :-
    treeToList(Tree,List),
    length(List,Count).

treeToList(Tree, List) :-
    % I use an accumulator, starting with an empty list.
    treeToList(Tree, [], List).

% The bottom is reached: The accumulated elements are the result.
treeToList(Tree, Accu, Accu) :- 
    var(Tree).

treeToList(bt(E, Left, Right), Accu0, List) :-
    Accu1 = [E|Accu0],              % prepend the accumulator with the current element
    treeToList(Left, Accu1, Accu2), % prepend elements of the left node
    treeToList(Right, Accu2, List). % prepend elements of the right node