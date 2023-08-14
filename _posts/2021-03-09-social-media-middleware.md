---
layout: post
title:  "Social media and middleware"
date: 2021-03-09
categories:
---
I had a long conversation last week with some friends who were less than convinced by the idea of [algorithm middleware]({%- post_url 2021-02-19-roon-algorithmic-choice-middleware -%}). Their argument was that creating choice for algorithms within social media platforms would increase the likelihood of people seeing harmful content: hate speech, disinformation, lies, bullying, phishing attempts — that kind of thing.

To sufficiently address this point I think it's necessary to distinguish between the different editorial processes that are involved in publishing content on a social media platform. I see three broad areas:

- **Censorship**, meaning the proactive and reactive removal of content from the platform.
- **Labelling**, meaning the placement of notices next to content, ostensibly "fact checking".
- **Ranking**, meaning the ordering of content in a user's feed.

If you assume that the developer of a middleware algorithm becomes responsible for each of these processes, then yes, creating a middleware market would increase the chances of harmful content being seen. In fact, it is inevitable that someone would create a system with minimal, if not zero, editorial oversight, something that would unleash a pretty nightmarish world on its users.

This consideration presents a more challenging flaw in the middleware model in my opinion. Could a middleware developer realistically handle the volume of censorship (moderation) currently carried out by social platforms today? It's unlikely. [Facebook's Safety and Security budget for 2019 was reported to be nearing $4BN](https://variety.com/2019/digital/news/facebook-2019-safety-speding-1203128797/), a cost that would critically reduce the potential entrants to any market.

So what to do? I can see a solution coming from a few sources.

We could mandate that moderation remains the responsibility of the platform owner. If they are benefitting from the advertising revenue, it could be argued that they should foot the bill for moderation. This does nothing for our concern about centralised power, however.

An alternative would be to make the state responsible for moderation, probably through a statutory corporate body or QUANGO like Ofcom (the UK's telecoms regulator) or the British Board of Film Classification (BBFC). A hybrid of the two could also work. For example, a British Board of Social Media Moderation (BBSMM) could create a framework that the platform was required to adhere to, enforceable by spot checks and fines. This body could also oversee the welfare of content moderators (assuming some were employed locally) as [the challenging working conditions they face is well documented](https://www.theverge.com/2019/2/25/18229714/cognizant-facebook-content-moderator-interviews-trauma-working-conditions-arizona).

Whether these rules apply on a user level, meaning the moderation applies wherever the user happens to be located. Or they apply on an IP level, wherever the user accesses the platform is an interesting question, but not an insurmountable one.

With censorship taken care of two editorial processes remain, labelling and ranking, both of which are less labour intensive and therefore more likely to result in a dynamic middleware market.

Some labelling could be handled by algorithms written by a middleware developer, for example, labelling any content that includes references to Covid vaccines. However, some labelling may require human oversight, for example fact checking organisations like FullFact rely on a team of human checkers.

Fact checking services that rely on human input will not keep up with the velocity of social content. However, real-time fact checking need not be the goal. A user could choose to opt-out of content that has been flagged for fact checking, it could be labelled as requiring fact checking, or they could be shown the unchecked content but notified if it is labelled retrospectively. Once again, this is why choice is critical. Decisions as impactful as the few described above should not be left solely in the hands of the platform owner.

Ranking is the process most suited to a middleware marketplace. Sequentially it follows censorship and labelling meaning all the content available to rank has been cleared for publication. It's then down to the user's chosen algorithm to decide how the content available should be prioritised based on the preference data it has. This is not to say that this is an easy task, but that it is one more suited to a software only solution, one that could written by a single developer, in an ideal world, the end user themselves.

Returning to the opening question: how does a middleware marketplace reduce the impact of harmful content on social media? The short answer is that it doesn't. But this misses the key point of the idea. The goal is to reduce the political power of social platforms, not clean up your timeline.

I think these changes can be part of a broader conversation about we regulate content on social platforms, but that conversation must start with the assumption that allowing social platforms to do it on our behalf is unacceptable. Users, in concert with the state, should have the power to decide what version the world they want to be exposed to.
