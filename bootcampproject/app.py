def reverse_lists(lst):
    result_list = []
    for item in lst:
        if isinstance(item, list):
            item = item[::-1]
            result_list.append(item)
    result_list = result_list[::-1]

    print(result_list)


expmle = [[1, 2], [3, 4], [5, 6, 7]]
reverse_lists(expmle)

def flatten_list(lst):
    result_list = []
    for item in lst:
        if isinstance(item, list):
            result_list.extend(flatten_list(item))
        else:
            result_list.append(item)
    return result_list

expmle2 = [[1,'a',['cat'],2],[[[3]],'dog'],4,5]
a = flatten_list(expmle2)
print(a)