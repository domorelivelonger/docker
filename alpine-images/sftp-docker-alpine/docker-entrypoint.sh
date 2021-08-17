ssh-keygen -A \
&& useradd -m  --uid 1000 -s /bin/bash ${SSH_USER} \
&& echo "${SSH_USER}:${SSH_PASS}" | chpasswd \
&& echo -e "${ROOT_PASS}\n${ROOT_PASS}" | passwd
RUN mkdir -p /home/${SSH_USER}/files
RUN mkdir -p /home/${SSH_USER}/.ssh
RUN touch /home/${SSH_USER}/.ssh/authorized_keys
RUN chmod g-w /home/${SSH_USER}
RUN chmod 700 /home/${SSH_USER}
RUN chmod 700 /home/${SSH_USER}/.ssh
RUN chmod 600 /home/${SSH_USER}/.ssh/authorized_keys
RUN chown -R ${SSH_USER}:${SSH_USER} /home/${SSH_USER}
chown -R ${SSH_USER}:${SSH_USER} /home/${SSH_USER}/.ssh
/usr/sbin/sshd -D -e "$@"
