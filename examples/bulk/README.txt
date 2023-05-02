In files bd.tf, epg.tf, bd1.tf.ste, bd2.tf.ste, epg1.tf.ste, epg2.tf.ste
please configure "count" for resources "aci_application_epg" "demoepg" and resource "aci_bridge_domain" "bd_for_rel"
consistently with your testing strategy.

There are two families of tests with the purpose of changing the parameters to test the bulk update.
The t1-test-suite.sh and t2-test-suite.sh scripts reconfigure the environment with the corresponding test family.
The run.sh script runs the selected suite of tests, the plan.sh script runs the planning. 
Both scripts automatically report the starting time and the ending time.
The results below are related to the preliminary tests we performed with a resouce count of 1000.

Create:
=======
ORIGINAL
67:48
MODIFIED
33:33

Read:
=====
ORIGINAL
5:31
MODIFIED
1:25

Update:
=======
ORIGINAL
62:02
MODIFIED
34:35
