# Log-Archive-Tool
A simple command-line tool to archive logs from a specified directory by compressing them into a `.tar.gz` file and storing them in a new directory.   This helps to keep the system clean while maintaining logs in a compressed format for future reference.


## Features

- Accepts any log directory as input.
- Compresses all log files into a `.tar.gz` archive.
- Stores the archive in a dedicated directory (`archived_logs`).
- Automatically names the archive with the current date and time.
- Logs the archive details (timestamp and file name) into `archive.log`.

---
## Dependencies
   * `tar`
   * `date`
   *  Standard Linux utilities (`mkdir`, `echo`)

All are pre-installed on most Unix/Linux systems.

## Running the Script

1. Clone this repository:

```bash
git clone https://github.com/ashishshrestha1196/Log-Archive-Tool
cd log-archive
```
2. Make the script executable:
```bash
chmod +x log-archive.sh
```
## Usage

Run the script with a log directory as an argument:
```bash
./log-archive.sh /var/log
```
Example archive created:

logs_archive_20250902_000405.tar.gz

And the archive details will be logged in:

archive.log

## Screenshot
![Code Running](Log-Archive.png)


