---
layout: post
title:  "AlgoTransparency, Cookies and Middleware"
date: 2021-03-26
categories:
---
Earlier this week I came across [AlgoTransparency](https://www.algotransparency.org), an interest group founded by Guillaume Chaslot who many people will recognise from The Social Dilemma. AlgoTransparency has commendable aims, they wish to:

- Raise public awareness about the lack of transparency provided by the world's most significant algorithms.
- Influence international regulators with regards to policy approaches.
- Pressurise the owners of significant algorithms to make changes to the way they operate.

This is an agenda I can get behind. End users should be provided with simple explanations about how the algorithms that power any given app or website work. And these explanations should satisfy both the need to understand the goal the algorithm has, for instance "time on site", and (to the extent that it's possible) the process that led to its final decision.<a href="#footnote1"><sup>1</sup></a>

There is a comparison to be made here with the EU's fated "cookie policy". While many people (myself included) lament the annoyance of consent pop-ups, it's hard to deny that their presence has had a significant impact on the public's understanding of how they are being tracked as they surf the web. And while it's unlikely that many people spend time reading the descriptions of the different cookies a website uses, the mandated openness has created a new dataset for examination by journalists and [privacy researchers](https://www.top10vpn.com/research/). An effect I would expect to be replicated with greater algorithm transparency.

Importantly, the cookie policy enables users to opt-out of a website's "non-essential" cookies. In the process of trying to do this [you're likely to come across all sorts of dark patterns](https://arxiv.org/abs/1909.02638) that attempt to trick you into submission, but it should still be possible, if not, the website's owner is breaking the law. There is no such option with algorithms. Partly because many of the algorithms we come into contact with provide essential functionality, but also because the website/app has a perfect monopoly over which algorithms you use.

I raise these points not because I think AlgoTransparency has picked the wrong fight – transparency will lead to a greater public understanding about algorithms and this is a worthy cause – but because transparency can only ever take us so far.

As I find myself regularly writing at the moment, [algorithm choice]({%- post_url 2021-02-19-roon-algorithmic-choice-middleware -%}), or more broadly, a marketplace for middleware, should be the direction we are headed. By creating choice for algorithms we diffuse the power they hold to multiple actors while retaining much of the value that comes with large platforms. I would also argue that a marketplace for middleware furthers the transparency cause because it makes transparency a vector by which consumers can vet their choice of algorithm. Developers who are open about the nature of their algorithms and the goals that its success is measured against, will surely be more appealing than those who choose to hide this information.

Another idea that I continually return to is that the successful regulation of tech/platforms/algorithms will be made up of many overlapping changes rather a single headline one. Break ups diffuse power, but aren't going to make it easier to compete against network effects that protect YouTube. Full protocol interoperability will support new market entrants but would likely come with new kinds of risk to personal data. Algorithm transparency does little to alter the distribution of power, but will make developers more accountable.

I wonder if taking a more "agile" approach to regulation is what is needed, smaller changes, call them tests, that try to target specific problems rather than change everything in one go. I'm no expert on the history of regulatory approaches but my gut tells me that this isn't a strategy that many policy makers would consider.

---

<p id="footnote1"><sup>1</sup> I add this caveat as it's important to remember that full algorithm transparency may not be possible. As Jenna Burrell points out in her excellent paper on <a href="https://journals.sagepub.com/doi/abs/10.1177/2053951715622512">opacity within machine learning</a>.</p>
