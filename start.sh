iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080
export FLASK_APP=microblog.py
export FLASK_RUN_PORT=8080
python3 -m flask run -h 0.0.0.0
