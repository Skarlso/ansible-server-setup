Explanation to this repository can be found in this blog post:
[Ansible + Nginx + LetsEncrypt](https://skarlso.github.io/2018/01/23/nginx-certbot-ansible/)

The command to execute a host file is as follows:

```bash
ansible-playbook -i ./hosts hosts.yml --vault-password-file .vault_pass
```

