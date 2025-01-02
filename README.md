
#
<p align="center">
       <img width="1024" src='Assets/DynamicWalls_Logo_03.png' alt="Logo">
</p>

---

<h1 align="center">
  DynamicWalls: The gnome wallpaper slider
</h1>


<p align="center">
... To Change the wallpaper consonantly in given time as a slidshow ...
<d align='justify'>

#

## 🧩 Introduction

I started this project because Ubuntu did not have a built-in wallpaper slider. This tool aims to fill that gap by providing an easy-to-use solution for automatically changing wallpapers at specified intervals.


🌟 **Used and teated in Ubuntu 24.04.**

## 🔧 Features

- 🖼️ Automatically change the wallpaper at specified intervals
- 📷 Supports multiple image formats
- ⚡ Lightweight and easy to use

## 🧑‍🔧 Installation

1. 📥 Clone the repository:
    ```sh
    git clone https://github.com/yourusername/DynamicWalls-The-gnome-wallpaper-slider.git
    ```
2. 📂 Navigate to the project directory:
    ```sh
    cd DynamicWalls-The-gnome-wallpaper-slider
    ```

3. 🎨 Change the wallpaper folder link in ```change_wallpaper.sh``` accordingly:    
    ```sh
    # Directory containing wallpapers
    WALLPAPER_DIR="$HOME/< Path to your cloned folder >/DynamicWalls-The-gnome-wallpaper-slider/Wallpapers" 
    ```
    
4. 🛠️ Test the Script: Run the script manually to ensure it works correctly with your current theme:
    ```sh
    ./change_wallpaper.sh
    ```

## 🎯 Usage 📱

1.  🖼️ Update Crontab : Update your crontab entry to ensure it's running the script every 10 minutes
    ```sh
    crontab -e
    ```
2.  📝 Add the following line to the crontab file:
    ```sh
    */10 * * * * /< Path to your cloned folder >/DynamicWalls-The-gnome-wallpaper-slider/change_wallpaper.sh >> /home/malaka/cron_log.txt 2>&1
     ```
3. 🚀 Start the wallpaper changer by manually:
    ```sh
    ./change_wallpaper.sh
    ```
## 💁🏽 Contributing

🤝 Contributions are welcome! Please fork the repository and submit a pull request.

## 💳 License

📜 This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## 🤗 Thanks!

👩🏻‍💻 Special thanks to [ChatGPT](https://www.openai.com/chatgpt) for providing assistance and support throughout the development of this project.