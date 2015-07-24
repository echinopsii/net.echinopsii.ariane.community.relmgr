import difflib

__author__ = 'stanrenia'


def check_str_diff(str1, str2):
    cases = [(str1, str2)]
    ret = True
    for a, b in cases:
        print('{} => {}'.format(a, b))
        for i,s in enumerate(difflib.ndiff(a, b)):
            if s[0] == ' ':
                continue
            elif s[0] == '-':
                ret = False
                print(u'Delete "{}" at position {}'.format(s[-1], i))
            elif s[0] == '+':
                ret = False
                print(u'Add "{}" to position {}'.format(s[-1], i))
        print()
    return ret