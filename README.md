<p align="center">
  <a href="https://github.com/AjejeBrazorf/connectMy">
    <img src="images/logo.svg" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Connect any android device over wifi</h3>

  <p align="center">
    with just one click!
    <br />
    <a href="https://github.com/AjejeBrazorf/connectMy/issues">Report Bug</a>
    ·
    <a href="https://github.com/AjejeBrazorf/connectMy/issues">Request Feature</a>
  </p>
</p>



<!-- ABOUT THE PROJECT -->
## About The Project

##### Disclamer: this is a script just for Linux, because yes.


Ever wanted to control your android device over wifi with just a click?
Then that's the repo you are searching for!

Here's how it works:
* Connect your phone via usb
* Set up a port for TCP connections
* Unplug it for ever
* Use the script to connect

What the script does is simply searching for your android device over the network your LAN and use its address to connect to it over TCP via scrcpy.

Of course, that sounds simple because it is. 
Need more details? Go on reading the next sections!

### Dependencies

You need these guys to be installed in order to proceed with the script

* [nmap](https://nmap.org/)
* [Android Debug Bridge (adb)](https://developer.android.com/studio/command-line/adb)
* [scrcpy](https://github.com/Genymobile/scrcpy)



<!-- GETTING STARTED -->
## Getting Started

First things first: get a local copy up and install the dependencies.

### Prerequisites


#### nmap
Install nmap following [this instructions](https://nmap.org/book/inst-linux.html).

Alternatively
* On Debian / Ubuntu
  ```sh
    sudo apt-get install nmap
  ```

* On Fedora / SUSE
  ```sh
    sudo yum install nmap
  ```

#### adb

Download and install adb from [here](https://developer.android.com/studio/releases/platform-tools).

Alternatively
* On Debian / Ubuntu
  ```sh
    sudo apt-get install android-tools-adb
  ```
* On Fedora / SUSE
  ```sh
    sudo yum install android-tools
  ```

#### scrcpy

Install scrcpy from [here](https://github.com/Genymobile/scrcpy).

Alternatively
* On Debian / Ubuntu
  ```sh
    sudo apt-get install android-tools-adb
  ```
* On Fedora / SUSE
  ```sh
    sudo yum install android-tools
  ```

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/AjejeBrazorf/connectMy.git
   ```
3. Place the `connectMy.sh` script somewhere like `~/.connectMy`
4. Enable the developer mode on your android device
5. Make sure `Debug USB` is turned on [more info](https://developer.android.com/studio/command-line/adb#Enabling)
6. Connect your device via USB
7. Open a terminal and set up the TCP connection to your android (port value could be anything between 5555 to 5585 but the script just works with `5555` as of now) [more info](https://developer.android.com/studio/command-line/adb#howadbworks)
```sh
    adb tcpip 5555
```
8. Noice, now edit `connectMy.sh` placing your device name onto the $phone variable (I know I know.. it is a mess, but it will get better)
9. Oh yeah, disconnect your phone!
10. Run the script! 

### Extra points to Griffindor
You may:
- want to add an Alias to your `.bash_aliases`/`.bashrc` file
```sh
    alias connectMy='bash ~/.connectMy/connectMy.sh'
```

- have an icon to just click and run the script, then if you have Gnome:        
-- Copy the `images` directory into the `~/.connectMy` folder
-- Edit the`connectMy.desktop` file placing your user name in the `Icon` path
-- Place the `connectMy.desktop` into `~/.local/share/applications`




<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/AjejeBrazorf/connectMy/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.
