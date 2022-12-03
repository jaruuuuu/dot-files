#!/usr/bin/env python3

from bs4 import BeautifulSoup
from pathlib import Path
from multiprocessing.pool import ThreadPool
import argparse 
import requests
import sys
import urllib

def task(num, total_num, url_item):
    name = url_item.split('/')[-1]
    path = Path(urllib.parse.unquote(name))

    print(f'({num} of {total_num}) downloading {path}', end='...', flush=True)
    response = requests.get(url_item)
    path.open('wb').write(response.content)
    print('done!', flush=True)

def main(opts):
    schemes_url = 'https://iterm2colorschemes.com'
    github_url = 'https://raw.githubusercontent.com/mbadolato'

    response = requests.get(schemes_url)
    soup = BeautifulSoup(response.content, features='lxml')

    items = soup.find_all('a')
    items = [item.attrs['href'] for item in items]
    items = [item for item in items if item.startswith(github_url)]
    items = [(num, len(items), item) for num, item in enumerate(items, start=1)]

    with ThreadPool(processes=opts.jobs) as pool:
        pool.starmap(task, items)

def parse_args(args=sys.argv[1:]):
    parser = argparse.ArgumentParser()
    parser.add_argument('--jobs', '-j', default=8, type=int)
    return parser.parse_args(args)

if __name__ == '__main__':
    main(parse_args())
    
