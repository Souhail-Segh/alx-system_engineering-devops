# web stack debugging project issue postmortem
## Issue Summary:

### Duration:
* Start Time: February 18, 2024, 15:30 GMT
* End Time: February 18, 2024, 18:45 GMT "What a 45min extra-time of work :tired_face:"

### Impact:
* The outage affected the **user authentication service**, causing a ***30% increase*** in login failures and a degradation in overall system performance. "Well at least it wasn't 100% :wink:"

### Root Cause:
* The root cause was identified as a misconfiguration in the load balancer settings, leading to an uneven distribution of traffic among the authentication servers. "Never trust that load balacer :monocle_face:"

### Timeline:
* Issue Detected:
February 18, 2024, 15:30 GMT

* Detection Method:
A surge in error rates was identified through real-time monitoring alerts. "A surge! what a word!"

* Actions Taken:
Initial investigation focused on the authentication servers and database clusters.
Assumptions were made about potential database connection issues due to recent updates.

* Misleading Paths (Every developer nightmare :dizzy_face:):
Initial focus on the database led to a temporary shutdown for maintenance, causing unnecessary downtime.
Investigated server logs for signs of unauthorized access, delaying the identification of the load balancer misconfiguration.

* Escalation:
The incident was escalated to the System Reliability Engineering (SRE) team :technologist: after the initial database-related investigation did not yield results.

* Resolution: :heart:
Load balancer settings were reconfigured to evenly distribute traffic among authentication servers.
Database maintenance was rolled back, and the system was thoroughly tested to ensure stability.

### Root Cause and Resolution:
* Root Cause: :evergreen_tree:
The load balancer misconfiguration resulted from recent changes aimed at optimizing traffic distribution. Specifically, an incorrect algorithm was inadvertently applied, causing a disproportionate number of requests to be directed to a single authentication server.

* Resolution: :100:
Load balancer settings were adjusted to evenly distribute incoming requests among authentication servers, eliminating the bottleneck.
Communication protocols between the load balancer and authentication servers were fine-tuned to prevent similar misconfigurations.

### Corrective and Preventative Measures:

* Improvements/Fixes: :jigsaw:
Strengthen monitoring for load balancer configurations, implementing automated alerts for irregularities.
Establish a rollback plan for configuration changes to quickly revert to a stable state in case of unexpected issues.

* Tasks: :scroll:
Implement a regular audit schedule for critical system configurations, including load balancers.
Conduct a thorough review of incident response procedures to enhance the efficiency of future investigations.
Enhance communication channels between teams to streamline incident escalation processes.
Provide additional training to the engineering team on recognizing and addressing misconfigurations promptly.