# https://github.com/kubernetes/helm/blob/master/docs/install.md

install-manual:
	ansible-playbook main.yml -i localhost -t install_manual

install-script:
	ansible-playbook main.yml -i localhost -t install_script

tiller:
	helm init

check-tiller:
	kubectl get po --namespace kube-system
