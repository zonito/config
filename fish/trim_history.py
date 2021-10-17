#! /usr/local/bin/python
# -*- coding: utf-8 -*-
import yaml

_FILENAME = '/Users/sharmal/.local/share/fish/fish_history'


def get_history():
    with open(_FILENAME, 'r') as f:
        config = yaml.load(f, Loader=yaml.FullLoader)
    return config


def trim():
    history = get_history()
    memo = {}
    for i in range(len(history) - 1, -1, -1):
        if history[i]['cmd'] in memo:
            history.pop(i)
            continue
        memo[history[i]['cmd']] = True
    with open(_FILENAME, 'w') as f:
        yaml.dump(history, f)


trim()
