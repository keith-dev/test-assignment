# Test Assignment No. 1
1. Get [a list](https://raw.githubusercontent.com/dwyl/english-words/master/words.txt) of English words.
2. Select 100 random entries that satisfy these conditions:
   * They begin with a lowercase letter.
   * They only contain letters.
3. Search those entries on [DuckDuckGo](https://duckduckgo.com).
4. Save the titles of top three results.

**Expected result**: a JSON of the following structure:
```
{"abacus": ["title 1", "title 2", "title 3"], "tree": ["title 1", "title 2", "title 3], ...}
```

# Test Assignment No. 2
Turn the script you created earlier into a proxy service that looks up a term on DuckDuckGo and returns a JSON array containing up to three top results for the entry.

**Expected result**: a publicly availble website that accepts `GET` requests at `/search/duckduckgo/{search term}`.


# Notes
Fork this repository before the work and open a pull request after so we can see your results.

Both assignments must be done in Python 3 with the use of any packages you see fit. When assessing the results, we'll pay special attention to performance of your code, so try to make it optimized. One of the assignments must contain tests written with the use of `unittest` and `unittest.mock` packages.
