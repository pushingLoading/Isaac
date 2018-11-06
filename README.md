# Isaac

### Usage:

#### Start Issac

```
./python3 isaac.py
```

---

### Concept:

#### Databases

```
databases are located in month folders inside 'isaacData/' directory
```

---

### Files description:

#### issac.py:
- main program

#### directorySetup.py (GUI):
- main program opens this dialog only if config.ini doesn't exist (when path to isaacData dir is not configured)

#### startScreen.py (GUI):
- checks if isaacData folder exist 
   (blocks Start button if issacData folder doesn't exist)
- counts num of folders (months) inside isaacData folder
