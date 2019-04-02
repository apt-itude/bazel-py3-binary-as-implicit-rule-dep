"""This script only works with Python3 because it uses pathlib"""

import pathlib
import sys


def main():
    pathlib.Path(sys.argv[1]).touch()


if __name__ == '__main__':
    main()
