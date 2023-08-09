# orphan-file-finder

Scans a directory to find orphan files and copies them to a folder.

## Table of Contents

- [Description](#description)
- [Usage](#usage)
- [Installation](#installation)
- [Example](#example)


## Description

When taking photos on my camera, I typically set the file format to "RAW+JPG". This will take photos in both RAW (.rw2) and JPG (.JPG) formats. For example:

- Image1.JPG
- Image1.RW2
- Image2.JPG
- Image2.RW2

RAW files provide far more image information, allowing me to capture more detail and greater dynamic range from my camera sensor. They also provide much more flexibility when editing the photos. The downside of this is the files are much larger in size. RAW files on my camera are typically 24MB+, whereas the JPG files are are typically 8-10MB.

Taking photos in both RAW and JPG allows me to share JPGs more easily (smaller, more compatible) whilst still giving me the option to edit those same photos in their RAW format. 

Sometimes, I will set the camera to only take photos in JPG format. There are a number of reasons for doing this. For example, conserving space on my SD card, or taking photos which I know I won't edit. There are also times where I will set the camera to only take photos in RAW format. For example, taking photos which I have no intention of sharing before editing them.

In the previous example, there was a corresponding RW2 file for each JPG.  This issue that arises when switching between file format modes is the emergence of "orphan" files. For example:

- Image1.JPG
- Image1.RW2
- Image2.JPG
- Image3.JPG
- Image3.RW2
- Image4.JPG
- Image5.RW2

The orphan files here are: "Image2.JPG", "Image4.JPG" and "Image5.RW2".

Orphan files make file management much more difficult. I can no longer delete all JPGs or delete all RW2 files and just keep the one format. This would put me at risk of losing images. This wouldn't be too big of an issue if I was dealing with a small number of files, since I could manually identify the orphan files. However, I recently had to manage 5078 photo files (98GB). Hence, I decided to develop a bash script to identify the orphan files and move them to a separate folder.  

## Usage

For the second prompt, the directory doesn't need to exist. If you input a non-existent directory, the script will create the directory for you.

```bash
./orphan-file-finder.sh
Where are the camera files located? Please input the path: 
Where would you like the orphan files to be stored? Please input the path:
```

## Installation

```bash
# Download the script
curl -o orphan-file-finder.sh https://raw.githubusercontent.com/ojlawson/orphan-file-finder/main/orphan-file-finder.sh

# Make the script executable
chmod +x orphan-file-finder.sh
```

## Example

```bash
./orphan-file-finder.sh

Where are the camera files located? Please input the path: /Users/oliver/camera-photos/
The path is valid.

Where would you like the orphan files to be stored? Please input the path: /Users/oliver/orphans
The path does not exist. Creating directory on your behalf...

Success! There were 149 orphan files detected. They have been copied to /Users/oliver/orphans.

ls /Users/oliver/orphans
P1012843.JPG	P1023499.JPG	P1023524.JPG	P1024107.JPG	P1024132.JPG	P1024158.JPG
P1023475.JPG	P1023500.JPG	P1023525.JPG	P1024108.JPG	P1024133.JPG	P1024159.JPG
P1023476.JPG	P1023501.JPG	P1023526.JPG	P1024109.JPG	P1024134.JPG	P1024160.JPG
P1023477.JPG	P1023502.JPG	P1023527.JPG	P1024110.JPG	P1024135.JPG	P1024161.JPG
P1023478.JPG	P1023503.JPG	P1023528.JPG	P1024111.JPG	P1024136.JPG	P1024162.JPG
P1023479.JPG	P1023504.JPG	P1023529.JPG	P1024112.JPG	P1024138.JPG	P1024163.JPG
P1023480.JPG	P1023505.JPG	P1023530.JPG	P1024113.JPG	P1024139.JPG	P1024164.JPG
P1023481.JPG	P1023506.JPG	P1023531.JPG	P1024114.JPG	P1024140.JPG	P1024165.JPG
P1023482.JPG	P1023507.JPG	P1023532.JPG	P1024115.JPG	P1024141.JPG	P1024166.JPG
P1023483.JPG	P1023508.JPG	P1023533.JPG	P1024116.JPG	P1024142.JPG	P1024167.JPG
P1023484.JPG	P1023509.JPG	P1023534.JPG	P1024117.JPG	P1024143.JPG	P1024168.JPG
P1023485.JPG	P1023510.JPG	P1023535.JPG	P1024118.JPG	P1024144.JPG	P1024169.JPG
P1023486.JPG	P1023511.JPG	P1023536.JPG	P1024119.JPG	P1024145.JPG	P1024170.JPG
P1023487.JPG	P1023512.JPG	P1023537.JPG	P1024120.JPG	P1024146.JPG	P1024171.JPG
P1023488.JPG	P1023513.JPG	P1024091.JPG	P1024121.JPG	P1024147.JPG	P1024172.JPG
P1023489.JPG	P1023514.JPG	P1024092.JPG	P1024122.JPG	P1024148.JPG	P1024173.JPG
P1023490.JPG	P1023515.JPG	P1024098.JPG	P1024123.JPG	P1024149.JPG	P1024174.JPG
P1023491.JPG	P1023516.JPG	P1024099.JPG	P1024124.JPG	P1024150.JPG	P1024175.JPG
P1023492.JPG	P1023517.JPG	P1024100.JPG	P1024125.JPG	P1024151.JPG	P1024176.JPG
P1023493.JPG	P1023518.JPG	P1024101.JPG	P1024126.JPG	P1024152.JPG	P1024177.JPG
P1023494.JPG	P1023519.JPG	P1024102.JPG	P1024127.JPG	P1024153.JPG	P1024178.JPG
P1023495.JPG	P1023520.JPG	P1024103.JPG	P1024128.JPG	P1024154.JPG	P1024179.JPG
P1023496.JPG	P1023521.JPG	P1024104.JPG	P1024129.JPG	P1024155.JPG	P1024180.JPG
P1023497.JPG	P1023522.JPG	P1024105.JPG	P1024130.JPG	P1024156.JPG	P1024181.JPG
P1023498.JPG	P1023523.JPG	P1024106.JPG	P1024131.JPG	P1024157.JPG
```
