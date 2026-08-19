---
layout: post
title: "Triggers, gates and safety in digital healthcare"
date: 2026-08-18
categories:
og: ""
---

Last week I was chatting with two friends, one a medic the other a hospital manager, about the [National Early Warning Score (NEWS)](https://www.nice.org.uk/advice/mib205/chapter/The-technology). NEWS is a system that can remotely alert clinicians to the deteriorating health of a patient, and, depending on the severity of the alert, [trigger a review by different grades of clinician](https://www.sciencedirect.com/science/article/pii/S147021182402623X).

This conversation created a distinction in my mind that had probably always been there, but at that moment crystallised. There are two types of check: one a trigger, check on something because an alert draws your attention to it; the other a gate, check on something at a specific moment.

An easy way to think about this is a simple production line. Imagine some process occurs between points A and B. Under a trigger you monitor the process and raise an alert when defects are detected, under a gate you stop the process at some point and wait for an inspector to allow the process to continue.

![A tigger and a gate in operation between points A and B](/assets/img/trigger-gate.jpg)

Returning to healthcare, NEWS is an example of a trigger based check, and the [Independent Second or Double Check (IDC)](https://sps.nhs.uk/articles/understanding-when-a-check-adds-value-to-medication-processes/) commonly found in pharmacy while preparing drugs, is, as the name suggests, an example of a gate. The IDC is regarded as a good example of a gate because it's typically applied to scenarios where it is quick to carry out, and it is protecting against some pretty massive, and potentially irreversible, downside.<a id="ref1" href="#ftn1"><sup>1</sup></a>

It would appear to me however that, in general, gates are far less effective.

# Unknowable trust

The obvious point is that a gate is a less efficient system than a trigger. Run up against a gate, and progress is slowed until you've been cleared to proceed by an inspector.

Inspectors can also drown under the volume of their work. Is it reasonable to assume someone can understand how to do the work safely if they are, for the most part, detached from the work itself? And at this point, doesn't it just become a tickbox exercise? Or a checkbox, as it's referred to in North America.

Oftentimes the solution to this problem is to inspect an artefact that represents the work rather than the work itself. This creates a new class of problem entirely in which teams become experts in producing the artefact rather than doing the work. Put another way, the gate begins to shape the work, rather than than assessing the safety of it, all of which is at the expense of the intended outcomes.

But the overarching problem with gates is that they assume that trust (in the team, in the process, in the thing being made) is unknowable. It has to be unknowable, because we stop every single time regardless of what came before.

# Checking on things

A brief detour into the origins of "checking" reveals some interesting things. The verb "to check" comes from chess, a position that puts your opponents king in immediate danger of capture, and requiring a counter measure from them, i.e. they are stopped and held in place. To audit comes from the Latin audire "to hear" as an official examining your accounts was originally an oral process.

But the seam of history most relevant here, starts, like many corporate processes, with Frederick Taylor, who established the inspector as a distinct role in his Principles of Scientific Management (1911). It wasn't long however until Taylor’s ideas were complicated by Walter Shewhart, whose control charts (c. late 1920s) allowed organisations to establish defined boundaries with which a process could operate safely within before requiring an intervention. In other words, control charts provided a method for investigating on the basis of evidence rather than as a matter of routine.

W. Edwards Deming, a Shewhart protégé, carried this thinking to Japan at the end of the Second World War and is often cited as a key contributor to the country's rise as a manufacturing powerhouse. The important point here is that Deming, like people at Toyota, Mitsubishi and no doubt others, had all arrived at a similar place: modern companies needed to “cease dependence on inspection” and instead empower the teams working on the line to raise concerns about quality issues and, ideally, automate the detection of defects too.<a id="ref2" href="#ftn2"><sup>2</sup></a>

# Mass-inspection

This journey into manufacturing history was not without a point. 

If we can see in principle why triggers are superior to gates, and, can see how a high-risk, complex manufacturing process like building a car was able to abandon the standing gate in favour of trigger-based quality control and empowered teams, why is it that mass-inspection remains the operating model of assurance within digital healthcare in the NHS?

One reasonable response would be to say that digital healthcare is nothing like manufacturing. This is true, but as we have already seen, there is evidence of effective triggers (such as NEWS discussed above) already being used in some of the highest risk situations in the NHS. I can recount to the second my own experience of a maternity team "crashing" the birth of my daughter when they got concerned about her heart rate. They did this in response to the data, not at some pre-defined junction. The latter would have been a both a waste of resources, scary for me and my partner, and hugely disempowering to the excellent midwife team who were in charge of her birth. Similarly, in digital, we are already familiar with the "vital signs" of our services though engineering dashboards that monitor application health in near real-time.

A further concern could be that embedded clinical safety officers (CSO) are not the same as inspectors, and that the move to "shift left", that is, bring a CSO into the earliest phases of the work, should make the movement through the gate easier. An embedded CSO feels right to me, however shifting left doesn't empower the team in the way we've seen it operating in manufacturing or other parts of the NHS. Authority for release remains separated from the team, which makes differences of opinion harder to rectify. And this all rests of the assumption that the CSO profession is adequately resourced.

Finally, you might argue that digital services can directly impact millions of people and so slowing down to ensure that work is being done safely, i.e. accepting the inefficiency of the gate, is not a particularly large price to pay. I think this argument assumes that a gate is, by default, a safer model (more on that in moment) but more to the point, this argument assumes that you can hold constant the environment in which code sits. But this is not true, the environment changes around us all the time and so we must [keep moving to keep safe]({%- post_url 2026-07-13-stay-put-keep-moving -%}). The opportunity cost of any decision to slow progress in a digital environment is measured in terms of the poor safety you are allowing to carry on in the meantime.

# Triggers not gates

It would appear to me, that over one hundred years of manufacturing history, and the processes already at work inside the NHS point towards a more effective form of ensuring digital products in the NHS are made safely. Here a three principles for starters:

### Safe delivery, not safety and delivery

Empower the delivery team (embedded clinician included) to take responsibility for safe delivery. To keep moving should be everyone's responsibility, just as it should be to raise concerns about quality. To separate these responsibilities is to risk lower morale, slower delivery of outcomes and the poor safety that follows.

### A definition of safe

Charge delivery teams with the creation of leading metrics (i.e. metrics that are derived from use of the product, not lagging health outcomes) that provide us with a definition of safe for an upcoming release.<a id="ref3" href="#ftn3"><sup>3</sup></a> Ensure that they can be monitored in near real-time and will trigger an intervention by the team if necessary.

### Start small, then scale

Monitor your product and the data it creates with a small subset of users first. Study its operation, make changes and improve your definition of safe. Scale when the team is confident it is the right time to do so.

# Why is this better?

History has shown us that empowered teams are more effective than those whose work is tightly managed. And you cannot give teams ownership over the upside and somehow protect them from the downside, they are two sides of the same coin. A process that has an definition of safe encoded into the product is also preferable to one where we review an artefact that demonstrates we have operated in a safe way. One can monitor the situation continually, the other gets signed off and archived. Finally, and this one really appeals to the product manager in me, a trigger based system embeds the "build a product analytics dashboard" principle into the organisation's operating model. Much like a private company will monitor a suite of leading metrics when a new product is released  to ensure it doesn't impact revenue, the NHS should be able to predict future changes in safety and patient outcomes from such early warning systems.

# The blame game

Reading [Jim Steel's excellent post on his experience of being a clinical safety officer](https://medium.com/@jim123steel/confessions-of-an-accidental-cso-eb3efb8a3d55) caused a teammate of mine to reflect, "this isn't really about safety, it's about providing a historical account of the work for the purpose of one day attributing blame." To work in the NHS is to be a public servant, and, rightly or wrongly, society demands a higher standard for our work than they do of other organisations. We spend their money and look after their family members after all. To that end, a paper trail of decisions made to ensure our work meets the highest standards shouldn't be something we shy away from, but it also must be something teams responsible for delivery are co-creators of. This is the final reason why I believe a shift to a trigger based model of safety is so critical. A definition of safe, agreed by a team with all the necessary skills, that starts small and scales sensibly is both evidence of that safe practice for people to point at, and a way to encode safety into the product itself rather than having it represented by some paper work. As the wonderful Liz Lutgendorff said in [her post on clinical assurance last week](https://lizlutgendorff.substack.com/p/clinical-safety-standards-and-me?r=62sy5), the current system can feel "like creating enough documentation to argue that something is safe, rather than actually creating something safe to use."

I shall echo Liz's call for those involved in this work to contribute to the [consultation currently underway for the DCB0129/0160 standards](https://digital.nhs.uk/data-and-information/information-standards/governance/latest-activity/standards-and-collections/review-of-digital-clinical-safety-standards-dcb0129-and-dcb0160). We have great people working across the digital and clinical professions in NHS England and we owe to them, and the people we serve, to ask if there are new ways we can make this work better for everyone. I think triggers, not gates, is one such route worthy of more exploration.

---

<p id="ftn1">1. Interestingly, <a href="https://qualitysafety.bmj.com/content/early/2026/03/13/bmjqs-2025-019743">this paper from March</a> suggests that the IDC is more effective amongst more experienced nurses. <a href="#ref1">↵</a>

<p id="ftn2">2. That quote is pulled from Deming's own writing, see <a href="https://direct.mit.edu/books/monograph/4192/Out-of-the-Crisis">Out of Crisis (2018)</a>, however for a longer history of Demings and his work I recommend <a href="https://www.amazon.co.uk/Demings-Journey-Profound-Knowledge-Industry/dp/1950508838">John Willis' biography</a>. <a href="#ref2">↵</a>

<p id="ftn3">3. I have <a href="https://medium.com/@veroj">Vero</a> to thank for the excellent "definition of safe" turn of phrase. <a href="#ref3">↵</a>