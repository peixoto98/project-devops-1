[instances]
%{ for ip in instances ~}
${ip}
%{ endfor ~}

[instances:vars]
ansible_ssh_common_args: '-o StrictHostKeyChecking=no'