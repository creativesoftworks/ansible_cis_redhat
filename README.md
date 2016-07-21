## Ansible + CIS Benchmarks + RHEL/CentOS 6

This is an ansible playbook for automatically applying CIS Security Benchmarks to a system running Red Hat Enterprise Linux 6 or CentOS 6. This is compliant with the latest CIS Benchmark version 2.0.1. It is based on the original work done by Major Hayden (https://github.com/major/cis-rhel-ansible), which was based on version 1.3.0 of the CIS Benchmark.

### What are these benchmarks?
The [Center for Internet Security](http://www.cisecurity.org/) publishes [security benchmarks](http://benchmarks.cisecurity.org/) for various systems.  Refer to the CIS site as the authoritative site for anything regarding these benchmarks.  You can join their community and contribute to the security benchmarks project.

### What does this playbook do?
The playbook will attempt to configure your system to meet as many of the CIS security benchmarks as possible.  Any benchmarks marked as "not scored" or benchmarks that are only checks will be skipped.

For full details and caveats, refer to the [notes](NOTES.md).

**Don't run this blindly on an production system.**  The playbook will make ***serious*** modifications to your system that could affect its availability.

#### Basic operation

Perform a dry run first:

    ansible-playbook -i hosts -C playbook.yml

If you're ***really really*** ready to apply changes, run it in regular mode:

    ansible-playbook -i hosts playbook.yml

#### Advanced options

Tags are available for running a section at a time:

    # Test only items from section 4
    ansible-playbook -i hosts -C playbook.yml -t section4
    
    # Apply changes only from items in section 4, 5, and 6
    ansible-playbook -i hosts playbook.yml -t section4,section5,section6

The checks are also broken up into Level 1 and Level 2 checks:

* Level 1: Good security improvements with less effects on production workloads
* Level 2: Strong security improvements with greater effects on production workloads

Running checks for a particular level is easy:

    ansible-playbook -i hosts playbook.yml -t level1
    ansible-playbook -i hosts playbook.yml -t level2

### How is this playbook licensed?
It's licensed under the [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0.html).  The [quick summary](http://bit.ly/VBkBfY) is:

    A license that allows you much freedom with the software, including an explicit right to a patent. “State changes” means that you have to include a notice in each file you modified. 

### Something doesn't work. You're awful at ansible playbooks.

Pull requests and GitHub issues are welcome!

Team VVL Systems