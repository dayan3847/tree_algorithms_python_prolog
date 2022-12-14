% Ordered Tree

% Insert (Insert a node)
% insert(Node, Tree, NewTree)
insert(Node, tree(Parent, nil, Right ), tree(Parent, tree(Node, nil, nil), Right)) :- Node < Parent, !.
insert(Node, tree(Parent, Left, nil ), tree(Parent, Left, tree(Node, nil, nil))) :- Node > Parent, !.
insert(Node, tree(Parent, Left, Right), tree(Parent, NewLeft, Right)) :- Node < Parent, insert(Node, Left, NewLeft), !.
insert(Node, tree(Parent, Left, Right), tree(Parent, Left, NewRight)) :- Node > Parent, insert(Node, Right, NewRight), !.

% Find (Ordered Search)
% find(Node, Tree, NodeTree).
find(Node, tree(Node, Left, Right), tree(Node, Left, Right)) :- !.
find(Node, tree(Parent, Left, _), NodeTree) :- Node < Parent, find(Node, Left, NodeTree), !.
find(Node, tree(Parent, _, Right), NodeTree) :- Node > Parent, find(Node, Right, NodeTree), !.

% Parent (Direct Parent)
% parent(Parent, Child, Tree)
parent(Parent, Child, tree(Parent, tree(Child, _, _), _)) :- !.
parent(Parent, Child, tree(Parent, _, tree(Child, _, _))) :- !.
parent(Parent, Child, tree(Root, Left, _)) :- Child < Root, parent(Parent, Child, Left), !.
parent(Parent, Child, tree(Root, _, Right)) :- Child > Root, parent(Parent, Child, Right), !.

% Predecessor (Is Predecessor)
% predecessor(Predecessor, Child, Tree)
predecessor(Predecessor, Child, tree(Predecessor, Left, _)) :- Child < Predecessor, find(Child, Left, _), !.
predecessor(Predecessor, Child, tree(Predecessor, _, Right)) :- Child > Predecessor, find(Child, Right, _), !.
predecessor(Predecessor, Child, tree(_, Left, _)) :- predecessor(Predecessor, Child, Left), !.
predecessor(Predecessor, Child, tree(_, _, Right)) :- predecessor(Predecessor, Child, Right), !.

% Leaf (Is a leaf node)
% leaf(Leaf, Tree)
leaf(Leaf, tree(Leaf, nil, nil)) :- !.
leaf(Leaf, tree(_, Left, _)) :- leaf(Leaf, Left), !.
leaf(Leaf, tree(_, _, Right)) :- leaf(Leaf, Right), !.

max(X, X, X) :- !.
max(X, Y, X) :- X > Y, !.
max(X, Y, Y) :- X < Y, !.

% Level (Level of a Tree)
% level(Level, Tree)
level(0, nil) :- !.
level(Level, tree(_, Left, Right)) :- level(LeftLevel, Left), level(RightLevel, Right), max(LeftLevel, RightLevel, MaxLevel), Level is MaxLevel + 1.

% Preorder
% preorder(Tree, List)
preorder(nil, []) :- !.
preorder(tree(Node, Left, Right), [Node|List]) :- preorder(Left, LeftList), preorder(Right, RightList), append(LeftList, RightList, List), !.

% Inorder
% inorder(Tree, List)
inorder(nil, []) :- !.
inorder(tree(Node, Left, Right), List) :- inorder(Left, LeftList), inorder(Right, RightList), append(LeftList, [Node|RightList], List), !.

% Postorder
% postorder(Tree, List)
postorder(nil, []) :- !.
postorder(tree(Node, Left, Right), List) :- postorder(Left, LeftList), postorder(Right, RightList), append(LeftList, RightList, TempList), append(TempList, [Node], List), !.

% Direct Childrens
% TODO not working
% childrens(Parent, Childrens, Tree)
childrens(Parent, Childrens, Tree) :- find(Parent, Tree, tree(Parent, tree(LeftNode, _, _), tree(RightNode, _, _))), append(LeftNode, RightNode, Childrens).

% TODO not working
adyacent(Node, [Parent, LeftNode, RightNode], Tree) :- parent(Parent, Node, Tree), childrens(Node, [LeftNode, RightNode], Tree).

% Delete a node
% TODO not working
% delete(Node, Tree, NewTree)
delete(Node, tree(Node, nil, nil), nil) :- !.
delete(Node, tree(Node, Left, nil), Left) :- !.
delete(Node, tree(Node, nil, Right), Right) :- !.
delete(Node, tree(Node, Left, Right), tree(Parent, NewLeft, Right)) :- find(Parent, Left, _), delete(Parent, Left, NewLeft), !.
delete(Node, tree(Node, Left, Right), tree(Parent, Left, NewRight)) :- find(Parent, Right, _), delete(Parent, Right, NewRight), !.
delete(Node, tree(Parent, Left, Right), tree(Parent, NewLeft, Right)) :- Node < Parent, delete(Node, Left, NewLeft), !.
delete(Node, tree(Parent, Left, Right), tree(Parent, Left, NewRight)) :- Node > Parent, delete(Node, Right, NewRight), !.

% example
% exampleTree(Tree) :- Tree = tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))).
% exampleTree(myTree).
