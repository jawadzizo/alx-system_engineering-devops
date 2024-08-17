#!/usr/bin/python3
"""module to find a subreddit subscribers"""

import requests


def number_of_subscribers(subreddit):
    """function to find the total number of a subreddit's subscribers"""
    url = f"https://www.reddit.com/r/{subreddit}/about.json"

    request_headers = {
        "User-Agent": "jawad_alx"
    }

    response_header = requests.get(url, headers=request_headers, allow_redirects=False)
    if response_header.status_code == 404:
        return 0

    return response_header.json()["data"]["subscribers"]
