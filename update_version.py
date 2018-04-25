#!/usr/bin/env python3

import re
import argparse
import difflib
from urllib.request import urlopen

parser = argparse.ArgumentParser(
    description='Script to update release version on spacewalk webpage. Always check the output!')
parser.add_argument('--version', action='store', required='true', help='For example "2.8"')
parser.add_argument('--config', action='store', help='Specify path to _config.yml', default='_config.yml')
parser.add_argument('--frontpage_header', action='store', help='Specify path to frontpage_header.html',
                    default='_includes/frontpage_header.html')

args = parser.parse_args()


def diff(old, new):
    old = old.splitlines(1)
    new = new.splitlines(1)
    uni = difflib.unified_diff(old, new)
    print(''.join(uni))


def update_config():
    with open(args.config, "r") as f:
        old = f.read()
        new = re.sub("(?<=spacewalk_version: )(.*)", args.version, old)
        new = re.sub("(?<=spacewalk_version_short: )(.*)", re.sub("\.", "", args.version), new)

    diff(old, new)
    answer = input("Please review above patch, does it make sense? [Y/N]: ")
    if answer and str.lower(answer) == 'y':
        f = open(args.config, 'w')
        f.write(new)
        f.close()
        return
    else:
        print("Skipping...")
        return


def update_release_notes():
    with open(args.config, "r") as f:
        version = re.search("(?<=spacewalk_version_short: )(.*)", f.read()).group(1)
    response = urlopen('https://github.com/spacewalkproject/spacewalk/wiki/ReleaseNotes' + version)
    data = response.read().decode('utf-8')
    data = re.search("Features &amp; Enhancements in Spacewalk .*?h2>(.*?)<h2>", data, re.DOTALL).group(1)
    with open(args.frontpage_header, "r") as f:
        old = f.read()
        new = re.sub("(?<=release-notes-inner\">).*?(?=<\/div>)", data, old, flags=re.DOTALL)
        diff(old, new)
        answer = input("Please review above patch, does it make sense? [Y/N]: ")
        if answer and str.lower(answer) == 'y':
            f = open(args.frontpage_header, 'w')
            f.write(new)
            f.close()
            return
        else:
            print("Skipping...")
            return


update_config()
update_release_notes()
