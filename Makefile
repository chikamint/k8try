.PHONY: setup

setup:
	@echo "================================================="
	@echo "   Infrastructure Deployment Wizard              "
	@echo "================================================="
	@read -p "Введите IP адрес сервера (VPS): " IP; \
	read -p "Введите ваш домен (например, name.duckdns.org): " DOMAIN; \
	read -p "Введите Email для SSL: " EMAIL; \
	echo "-------------------------------------------------"; \
	echo "Начинаем установку на $$IP..."; \
	echo "-------------------------------------------------"; \
	ansible-playbook -i $$IP, ansible/deploy.yml -u root \
		--extra-vars "domain=$$DOMAIN email=$$EMAIL"
