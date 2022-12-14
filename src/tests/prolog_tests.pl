% Tree Test

tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))).

find(6, tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))), FoundTree ).
find(20, tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))), FoundTree ).
find(1, tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))), FoundTree ).
find(8, tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))), FoundTree ).

parent(Parent, 6, tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))) ).
parent(Parent, 20, tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))) ).
parent(Parent, 1, tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))) ).
parent(Parent, 12, tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))) ).

childrens(6, Childrens, tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil))))).

predecessor(12, 4, tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))) ).
predecessor(12, 20, tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))) ).
predecessor(20, 12, tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))) ).

level(Level, tree(12, nil, nil)).
level(Level, tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))) ).

insert(9,tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))), NewTree).
insert(5,tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))), NewTree).

delete(20,tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))), NewTree).
delete(12,tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))), NewTree).
tree(6, tree(2, tree(4, nil, nil), tree(8, nil, tree(10, nil, nil))), tree(14, nil, tree(18, tree(16, nil, nil), tree(20, nil, nil)))).
delete(6,tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))), NewTree).

preorder(tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))),List).

inorder(tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))),List).

postorder(tree(12,tree(6,tree(2,nil,tree(4,nil,nil)),tree(8,nil,tree(10,nil,nil))),tree(14,nil,tree(18,tree(16,nil,nil),tree(20,nil,nil)))),List).
