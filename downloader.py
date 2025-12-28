import os
import time
from yt_dlp import YoutubeDL
from pathlib import Path

def get_download_path():

    if os.path.exists('/data/data/com.termux/files/home'):
        base_path = Path('/sdcard/Download')

    else:
        base_path = Path.home() / "Downloads"

    if not base_path.exists():
        try:
            base_path.mkdir(parents=True, exist_ok=True)
            print(f"Note: Created new directory at {base_path}")
        except Exception:
            return '%(title)s.%(ext)s'

    return str(base_path / "%(title)s.%(ext)s")

def video(url):
    download_tmpl = get_download_path()

    code = {
        'format': 'best',
        'outtmpl': download_tmpl,
        'quiet': False,
        'no_warnings': True,
        'continuedl': True,
    }

    try:
        with YoutubeDL(code) as ydl:
            print("\n[STARTING] Downloading video, please wait...")
            ydl.download([url])
        print("\n" + "="*40)
        print("Success: Video saved to Downloads folder ✅")
        print("="*40)
    except Exception as e:
        print(f"\n[ERROR] Something went wrong: {e}")

if __name__ == "__main__":
    os.system ("clear")
    print ("="*40)
    time.sleep (1)
    print (" Download videos with ==>> Engineer Osama")
    time.sleep (1)
    print (" My page on gethub    ==>> osamacode404")
    time.sleep (1)
    print ("="*40)
    print ()
    time.sleep (1)
    print ("Download any video from all online platforms via the link\n")
    print ( )
    time.sleep (1)
    url =input("\nPaste the video link here: ")
    if url.strip():
        video(url)
    else:
        time.sleep (1)
        print ("Invalid link!")
        time.sleep (1)
