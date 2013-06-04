This is a Sinatra app that generates little five-paragraph markov chains, with a dictionary created from the complete works of Borges. The dictionary itself is large, but most of the page load time is actually spent generating the sentences. I could speed this up with caching, or something cleverer, but since this was all slapped together in an hour, I'll only bother if there's some interest.

Idea stolen from [@robinsloan](http://twitter.com/robinsloan), but since he took down his repo, I can't make a pull request.
