#!/usr/bin/env python3

from pathlib import Path
import argparse, sys
import shutil

REPO = Path(__file__).resolve().expanduser().parent

def move_to_backup(path):
    backup_path = path.with_name(f'{path.name}.bk')

    if backup_path.exists():
        move_to_backup(backup_path)

    shutil.move(path, backup_path)

def make_symlinks(items):
    for target, symlink in items:
        target = (REPO / target).expanduser()
        symlink = Path(symlink).expanduser()

        if symlink.exists():
            move_to_backup(symlink)

        symlink.symlink_to(target)

def symlinks_for_tmux():
    return [('tmux/tmux.conf', '~/.tmux.conf')]

def symlinks_for_zsh():
    return [('zsh/zprofile.conf', '~/.zprofile'),
            ('zsh/zshenv.conf', '~/.zshenv'), 
            ('zsh/zshrc.conf', '~/.zshrc')]

def main(opts):
    if opts.tmux:
        make_symlinks(symlinks_for_tmux())

    if opts.zsh:
        make_symlinks(symlinks_for_zsh())

def parse_args(args=sys.argv[1:]):
    parser = argparse.ArgumentParser()
    parser.add_argument('--tmux', action='store_true')
    parser.add_argument('--zsh', action='store_true')
    return parser.parse_args(args)

if __name__ == '__main__':
    main(parse_args())

