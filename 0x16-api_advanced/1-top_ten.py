#!/usr/bin/python3
"""module to print 10 hotters subreddit's posts"""

from requests import get


def top_ten(subreddit):
    """function to print 10 hotters subreddit's posts"""
    url = f"https://www.reddit.com/r/{subreddit}/hot/.json"
    request_headers = {
        "User-Agent": "jawad_alx"
    }

    response_headers = get(url, headers=request_headers, params={"limit": 10}, allow_redirects=False)
    if response_headers.status_code == 404:
        print("None")
        return

    try:
        results = response_headers.json()["data"]
    except Exception:
        print("None")
        return

    for post in results["children"]:
        print(post["data"]["title"])
