#!/usr/bin/python3
"""Module to find hot posts on a specific subreddit"""

import requests


def recurse(subreddit, hot_list=[], after="", count=0):
    """Function to find hot posts on a specific subreddit"""
    url = "https://www.reddit.com/r/{}/hot/.json".format(subreddit)
    headers = {"User-Agent": "jawadalx"}
    parameters = {"after": after, "count": count, "limit": 100}

    response_headers = requests.get(url, headers=headers, params=parameters,
                                    allow_redirects=False)

    if response_headers.status_code == 404:
        return None

    results = response_headers.json().get("data")
    after = results["after"]
    count += results["dist"]

    for child in results["children"]:
        hot_list.append(child["data"]["title"])

    if after is not None:
        return recurse(subreddit, hot_list, after, count)

    return hot_list
