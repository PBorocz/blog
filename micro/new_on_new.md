# "New on New"'

### What is *New on New*?

When combining more than one new resource with another one.
Resources could be almost anything, i.e. people, technology, processes etc.

<!--more-->

### What are some examples?

1. Pairing a brand new technology stack on a brand-new project (particularly without adequate risk-management).
2. Pairing a newly-hired employee under a newly-hired supervisor/manager.
3. Pairing a brand new project manager onto a new, high-risk project.

### Suggestions?

As a risk manager, I always suggest never getting into the *New on New* scenario. By
exponentially compounding the risk of the relevant project/initiative/team, you're incurring
significantly more risk than is absolutely necessary.

Let's look at the examples above in more detail:

  1. A new software project almost always utilises new and/or unproven technologies (even
     existing & proven technologies in the outside world may be completely new to the respective
     team).

  2. This is somewhat easier...don't assign a new employee to a new supervisor! Either on-board
     a new employee with an experienced supervisor/manager or place a newly-hired
     supervisor/manager on a team with existing experience in company operations.

  3. Similarly, a new project manager should be assigned to low-risk and/or small projects
     initially (company's project management standards, policies and procedures vary too much
     for an external individual to immediately on-board into a situation requiring them to
     hit-the-ground running).

### OK, we don't have a choice..what then?

In cases where you *really* can't get out of it, there are various mitigation strategies possible:

  1. New technologies should be learned, vetted and tested as early as possible in a
     project/initiative. This should include sample implementations (including deployment to as
     semi-production environments to evaluate deployment issues).

     Thus, respective project tasks and associated time **must** be explicitly identified and
     allocated to these efforts. The time required might be no more than a few hours for a new
     language library to person-weeks or months for a complex new addition (for example, moving
     from an RDBMS to a NoSQL document-store database or using a completely new implementation
     language).

     I recommend breaking these cases into the following buckets:

     * **Low** - Up to a *person-day's* work all in. Examples include: swapping a logging library,
       changing to a third-party datetime library, etc.
     * **Medium** - Up to a *person-week's* work. Examples include: moving from one
       database/caching platform to another (SQLServer to PostgresQL, memcached to Redis, etc.),
       using another new Javascript UI framework etc.
     * **High** - Up to a *person-month's* work. Examples include: using a new implementation
       language (Python to Go/Rust), developing a complex Javascript-based web UI for the first
       time etc.

  2. *Someone* must be responsible for on-boarding new supervisors/supervisees. Mitigation strategies include:

     * Relying on the existence of or creating explicit standards, policies and procedures
       documentation *before-hand*. If both individuals have reference documentation for both
       their roles/responsibilities *and* how perform them, a significant amount of risk and
       uncertainty can be reduced.

     * Ultra-frequent check-ins. This is not a situation where a weekly or monthly manager
       check-in is sufficient. Daily or twice-daily check-ins from an even more senior manager
       (or anyone with significant experience of the department or team) is critical to making
       sure the individuals ramp-up as quickly as possible and reducing errors.

  3. Similar to the example above, a strongly/clearly documented project management approach and
     procedures can go a long way to make sure a new project manager on-boards as quickly as
     possible while still being effective at their role on a new, high-risk project. If these
     aren't available, strong and frequent mentoring is critical to making sure the project
     doesn't go 'off the rails'.

---------------------


Net net, *New on New* simply adds more risk than it's worth. Don't do it unless you absolutely
have **OR** have *explicitly* mitigated the risk involved!


Keywords: organizational behaviour
