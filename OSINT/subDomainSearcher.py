#!/usr/bin/env python3
import re
import requests
import argparse

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('-d', '--domain', type=str, required=True, help="Target domain.")
    parser.add_argument('-o', '--output', type=str, help="Output file.")
    return parser.parse_args()

def clear_url(target):
    return re.sub(r'.*www\.', '', target, 1).split('/')[0].strip()

def save_subdomains(subdomain, output_file):
    with open(output_file, "a") as f:
        f.write(subdomain + '\n')

def main():
    args = parse_args()

    subdomains = []
    target = clear_url(args.domain)
    output = args.output

    try:
        req = requests.get("https://crt.sh/?q=%.{d}&output=json".format(d=target))
        req.raise_for_status()
    except requests.RequestException as e:
        print(f"[X] Error: {e}")
        exit(1)

    for value in req.json():
        subdomains.append(value['name_value'])

    print("\n[!] - TARGET: {d} - [!] \n".format(d=target))

    subdomains = sorted(set(subdomains))

    for subdomain in subdomains:
        print("[+]  {s}".format(s=subdomain))
        if output:
            save_subdomains(subdomain, output)

    print("\n\n[!]  Done.")

if __name__ == "__main__":
    main()
