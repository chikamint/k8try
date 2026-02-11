setup:
	@echo "================================================="
	@echo "   Infrastructure Deployment Wizard"
	@echo "================================================="
	@read -p "Введите IP адрес сервера (VPS): " ip; \
	read -p "Введите ваш домен (например, name.duckdns.org): " domain; \
	read -p "Введите Email для SSL: " email; \
	ansible-playbook ansible/deploy.yml -i $$ip, -u root -k -e "domain=$$domain email=$$email"
