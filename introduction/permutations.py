def insert_to(s, l):
    if not l: return [[s]]
    h, t = l[0], l[1:]
    ans = [[s, *l]]
    l1 = insert_to(s, t)
    for i in l1:
        ans.append([h] + i)
    return ans

def permutations(l):
    if not l: return []
    if len(l) == 1: return [l]
    h, t = l[0], l[1:]
    l1 = permutations(t)
    ans = []
    for i in l1:
        l2 = insert_to(h, i)
        for j in l2:
            ans.append(j)
    return ans

for i in permutations([1,2,3,4,5]):
    print(*i)