import csv
import sys

if len(sys.argv) == 3 and sys.argv[1] == "apply":
    end = sys.argv[2].find("|")
    print("%s" % sys.argv[2][:end], end="")
    exit()


f = open("unicode-math-symbols/unicode-math-symbols.csv")

lines = (line for line in f if line[0] != "#")

reader = csv.reader(lines, delimiter="^")

for row in reader:
    c = row[1]
    if c == row[2] or c == row[7]: continue
    desc = row[2].replace("\\\\", "\\") if row[2] != "" else row[7].lower()
    print("%s|%s" % (c, desc))
