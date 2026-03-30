# oss-audit-24BOE10026
# 🐍 The Open Source Audit — Python
### A Capstone Project | Open Source Software (NGMC Course)

**Student:** Prajukta Paul
**Registration No.:** 24BOE10026
**Slot:** F11
**Submission Date:** 31/03/2026

---

## 📌 Overview

This project is a comprehensive audit of **Python** as an open-source software system. It examines Python's origin, philosophy, licensing, Linux footprint, FOSS ecosystem, and a critical comparison with its proprietary alternative — MATLAB.

The audit also includes **five shell scripts** that demonstrate real-world Linux and open-source concepts through working terminal code.

---

## 📂 Project Structure

```
oss-audit-24BCOE10026/
│
├── README.md                        # This file
├── report/
│   └── oss-audit-24BCOE10026_PrajuktaPaul.pdf   # Full written report
│
└── scripts/
    ├── script1_system_identity.sh       # System Identity Report
    ├── script2_foss_inspector.sh        # FOSS Package Inspector
    ├── script3_disk_permission.sh       # Disk and Permission Auditor
    ├── script4_log_analyzer.sh          # Log File Analyzer
    └── script5_manifesto_generator.sh   # Open Source Manifesto Generator
```

---

## 📋 Report Sections

| Part | Title | Units Covered |
|------|-------|---------------|
| A | Origin and Philosophy | Units 1 & 2 |
| B | Linux Footprint | Unit 2 |
| C | The FOSS Ecosystem | Units 3 & 4 |
| D | Open Source vs Proprietary (Python vs MATLAB) | Unit 5 |

---

## 🐚 Shell Scripts

### Script 1 — System Identity Report
Displays a formatted welcome screen with real-time system information: kernel version, distro name, current user, uptime, date/time, and license info.

```bash
bash script1_system_identity.sh
```

### Script 2 — FOSS Package Inspector
Checks whether Python3 is installed, displays version and install path, and prints a philosophy note based on the package name using a `case` statement.

```bash
bash script2_foss_inspector.sh
```

### Script 3 — Disk and Permission Auditor
Audits key Linux directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`) for permissions, ownership, and disk usage. Also inspects the Python install path.

```bash
bash script3_disk_permission.sh
```

### Script 4 — Log File Analyzer
Scans a log file for a keyword (default: `error`), counts occurrences, and displays the last 5 matching lines. Auto-generates a sample log if none exists.

```bash
bash script4_log_analyzer.sh [logfile] [keyword]

# Example:
bash script4_log_analyzer.sh sample.log error
```

### Script 5 — Open Source Manifesto Generator
Asks the user three questions and generates a personalized open-source manifesto saved as a `.txt` file.

```bash
bash script5_manifesto_generator.sh
```

---

## 📄 License

This project is submitted under the **PSF License** (Python Software Foundation License) for the open-source software components referenced and the **MIT License** for the shell scripts written as part of this audit.

> *"Free as in freedom — not just free as in free beer."*
> — Richard Stallman

---

## 🔗 Key References

- [GNU Free Software Definition](https://www.gnu.org/philosophy/free-sw.html)
- [Open Source Initiative — OSD](https://opensource.org/osd)
- [Python Software Foundation](https://www.python.org/about/)
- [Python Official Docs](https://docs.python.org/3/)
- [CPython GitHub Repository](https://github.com/python/cpython)
- [PSF License Text](https://docs.python.org/3/license.html)
- [Choose a License](https://choosealicense.com/)

---

## 💡 Key Takeaways

- Python was created in December 1989 by **Guido van Rossum** and released publicly in February 1991.
- It is licensed under the **PSF License** — a permissive, open-source license similar to MIT/BSD.
- Python powers platforms like **Instagram, Netflix, NASA, and Google**.
- Its open nature has enabled a massive ecosystem: Django, Flask, NumPy, TensorFlow, PyTorch, and more.
- Compared to MATLAB, Python is **free, community-governed, and universally accessible**.

---

*Submitted for the Open Source Software (NGMC) Course | VITyarthi*
