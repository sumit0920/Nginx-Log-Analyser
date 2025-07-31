# 🔍 NGINX Access Log Analyzer

A simple Bash script to analyze the NGINX access log and generate useful insights like:

* Top IP addresses making requests
* Most requested URLs/paths
* Most common HTTP response status codes
* Most frequent user agents

> ✅ Useful for developers, sysadmins, and DevOps engineers who want quick insights from access logs.

---

## 📁 File Structure

```bash
.
├── analyze-nginx-log.sh   # Main analysis script
```

---

## 🧰 Requirements

* Bash Shell (Tested on `bash v5+`)
* NGINX access log at `/var/log/nginx/access.log` (or adjust the path)

---

## ⚙️ How It Works

This script performs the following:

1. **Top 5 IP Addresses** – Shows which IPs are making the most requests.
2. **Top 5 Requested Paths** – Reveals the most accessed endpoints or resources.
3. **Top 5 HTTP Status Codes** – Helps identify common response codes (e.g., 200, 404, 500).
4. **Top 5 User Agents** – Highlights the most frequent clients (browsers, bots, etc.).

---

## 🚀 Usage

### Step 1: Clone the Repo

```bash
git clone https://github.com/<your-username>/nginx-log-analyzer.git
cd nginx-log-analyzer
```

### Step 2: Make the Script Executable

```bash
chmod +x analyze-nginx-log.sh
```

### Step 3: Run the Script

```bash
sudo ./analyze-nginx-log.sh
```

📌 *If your NGINX log is in a different location, update the `LOGFILE` variable at the top of the script.*

---

## 🧪 Sample Output

```bash
Top 5 IP addresses with the most requests:
192.168.0.1 - 234 requests
203.0.113.42 - 180 requests
...

Top 5 most requested paths:
/index.html - 120 requests
/api/login - 98 requests
...

Top 5 response status codes:
200 - 370 requests
404 - 50 requests
...

Top 5 user agents:
Mozilla/5.0 (...) - 190 requests
curl/7.68.0 - 95 requests
...
```

---

## 🛠️ Customization

You can easily customize:

* Log path: update the `LOGFILE` variable
* Number of top results: change `head -n 5` to `head -n 10` or any value

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

## 🙌 Contributions

PRs, issues, suggestions, and forks are welcome!

---

## 📫 Contact
For queries or collaboration:

🌐 LinkedIn: https://www.linkedin.com/in/sumitsharma-ss/

🐙 GitHub: https://github.com/sumit0920

🐦 X / Twitter: https://x.com/sumitsharma_95

