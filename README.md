# Isaac
> Master of the Royal Mint 

<p align="center">
<a href="https://science.howstuffworks.com/innovation/famous-inventors/5-isaac-newton-inventions8.htm"><img src="https://pm1.narvii.com/6607/0b92889dff8c5f5a35bb800da2a424dbdd50560d_hq.jpg" title="Isaac"></a></p>

### Usage:

#### Start Issac

```
./python3 isaac.py
```

---

### Concept

---

#### Configs
- /config.ini (main config)

#### Databases

```
database files must be located in '[data folder]/[year]/[month]/' dir
```

---

### Files description

---

### Backend:

#### issac.py:
- main program

#### *_support.py:
- GUI files - functions


### Frontend:

#### directorySetup.py (GUI):
- main program opens this dialog only if config.ini doesn't exist inside Isaac dir

#### startScreen.py (GUI):
- checks if data dir exist
  (blocks Start button if data dir doesn't exist)

#### isaacInterface.py (GUI):
- main window
> added INFO/CPU Info functionality

#### cpu_info.py (GUI):
- info window
