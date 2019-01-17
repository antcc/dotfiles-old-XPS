#!/usr/bin/python

from PyPDF2 import PdfFileMerger
from glob import glob
import argparse

parser = argparse.ArgumentParser(description="Merge a number of PDF files into one.")
parser.add_argument('pdfs', metavar='file.pdf', nargs='+', help="Two or more PDF file for merging")
parser.add_argument('result', metavar='result.pdf', help="Name of generated PDF file")
args = parser.parse_args()

merger = PdfFileMerger()

for pdf in args.pdfs:
    merger.append(pdf)

merger.write(args.result)

