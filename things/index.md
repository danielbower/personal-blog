---
layout: page
title: Things
permalink: /things/
---
Making stuff with an LLM in the driver's seat has me feeling like I am 14 again. Making things with my computer as a kid led me into a 20+ year long career and I have loved every minute of it.

But the more time I spent leading people, the less time I spent making things. And if you don't spend time making things you quickly forget how to do it.

Is the code very good? Probably not. Was my code *ever* very good? No. The point is I am making things again and that feels invigorating.

Things I am maintaining right now:

<section class="archive_by_year">
{% for category in site.data.things %}
<details class="archive_year" open>
    <summary class="archive_year_summary">
        <span class="archive_year_row">
            <span class="archive_year_label">{{ category.name }}</span>
            <span class="archive_year_count">{{ category.items | size }} thing{% if category.items.size != 1 %}s{% endif %}</span>
        </span>
    </summary>
    <div class="archive_year_posts">
        {% for item in category.items %}
        <p><a href="{{ item.url | prepend: site.baseurl }}">{{ item.title }}</a> – {{ item.description }}</p>
        {% endfor %}
    </div>
</details>
{% endfor %}
</section>