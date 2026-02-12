# 1. Для удаленной установки (с твоего ПК на VPS)
setup:
	@echo "================================================="
	@echo "    Remote Infrastructure Deployment"
	@echo "================================================="
	@read -p "Введите IP адрес сервера (VPS): " ip; \
	read -p "Введите ваш домен (например, name.duckdns.org): " domain; \
	read -p "Введите Email для SSL: " email; \
	ansible-playbook ansible/deploy.yml -i $$ip, -u root -k -e "domain=$$domain email=$$email"

# 2. Для локальной установки
install-local:
	@echo "================================================="
	@echo "    Local Infrastructure Deployment"
	@echo "================================================="
	@read -p "Введите ваш домен (например, name.duckdns.org): " domain; \
	read -p "Введите Email для SSL: " email; \
	ansible-playbook ansible/deploy.yml -i "localhost," -c local -e "domain=$$domain email=$$email"

# 3. Установка зависимостей для удалённой установки
init:
	sudo apt update && sudo apt install -y ansible sshpass
