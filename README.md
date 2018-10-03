## k8s-hard-way-course

### Background

Lab and scripts for Will Boyd's "Kubernetes the Hard Way" course on Linux Academy. https://linuxacademy.com/linux/training/course/name/kubernetes-the-hard-way

The course itself is based on Kelsey Hightower's tutorial. https://github.com/kelseyhightower/kubernetes-the-hard-way

### Goals

- isolated, lightweight lab environment
- alternative to existing kubectx / kops based workflow
- effortless authentication to cloud instances
- Ansible support for easy adhoc commands
- script the course work
- play in the Linux Academy sandbox, mostly
- add back missing 3rd master to cluster
- learn

### Usage

`./client.sh`

### Suggested Prereqs

- make sure docker works locally
- follow the steps in the `Setting Up Your Cloud Servers` lesson
- setup key based auth on the cloud instances for `user`
- setup NOPASSWD sudo for user on the cloud instances
- modify ssh config similar to `ssh.config.sample`
- copy `hosts.sample` to `hosts` and populate with IPs of the cloud instances (public IPs need to be updated each time lab times out)
- copy `hosts` file to the cloud instances using `deploy_hosts.sh`
