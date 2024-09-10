### Настройка и конфигурирование веб сервера
# Установка и настройка apache + Nginx:
-  1 Установка Apache
```
sudo apt install -y apache2
```
-  2 Настройка Apache с помощью bash конфига
```
bash apache2configs.sh
```
- 3 Устано Nginx и настройка кофнигурации
```
sudo apt-get install nginx -y
```
- 4 Используя скрипт копируем заренее подготовленный конфиг
# Установка MySQL и настройка:

- 1	Установка mysql и настройка source
```
sudo apt install -y mysql-server-8.0
```
- 2 Далее запускаем скрипт
```
bash mysql-config-master.sh
```
# Настраиваем мониторинг и сбор логов

- 1 Установка prometheus
```
sudo apt install prometheus-node-exporter
```
- 2 Установка filebeat
```
sudo dpkg -i filebeat_8.9.1_amd64-224190-e0af99.deb
```
- 3 Настройка конфигурации
```
bash filebeat.sh
```
- 4 Установка Grafana для мониторга и дашбардов:
```
sudo apt install -y adduser libfontconfig1 musl
```
```
sudo dpkg -i grafana-enterprise_11.1.3_amd64.deb
```

- 5 Настройка конфига и рестарт prometheus и grafana 
```
bash prometheus-config
```

## Установка и настройка машины slave и ELK:
- 1 Установка MySQL
```
sudo apt install -y mysql-server-8.0
```
- 2 Настрйока репликации 
```
bash mysql-slave.sh
```
- 3 Установка java для работы ELK
```
apt install -y default-jdk
```
- 4 Установка ELK и настройка конфига
```
dpkg -i elasticsearch_8.9.1_amd64-224190-300799.deb
```
```
bash ELK.sh
```
- 5 Установка Kibana
```
dpkg -i kibana_8.9.1_amd64-224190-68eb0f.deb
```
- 6 Настройка конфигурации Kibana
```
bash kibana.sh
```
- 7 Установка Logstash
```
 dpkg -i logstash_8.9.1_amd64-224190-e8ea1a.deb
```
- 8 Настрйока конфигурации Logstash
```
logstash.sh
```
