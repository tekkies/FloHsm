# -*- mode: python ; coding: utf-8 -*-

#Build: pyinstaller --noconfirm FloHsm.pyinstaller.spec
#Test: \dist\FloHsm\FloHsm.exe "..\esp-12e-alexa-door-bell\src\esp-12e-alexa-door-bell\fsm.plantuml"

block_cipher = None


a = Analysis(
    ['Source\\Generator\\FloHsm.py'],
    pathex=['Source\\Generator'],
    binaries=[('Source\\Generator\\templates','templates')],
    datas=[],
    hiddenimports=[],
    hookspath=[],
    hooksconfig={},
    runtime_hooks=[],
    excludes=[],
    win_no_prefer_redirects=False,
    win_private_assemblies=False,
    cipher=block_cipher,
    noarchive=False,
)
pyz = PYZ(a.pure, a.zipped_data, cipher=block_cipher)

exe = EXE(
    pyz,
    a.scripts,
    [],
    exclude_binaries=True,
    name='FloHsm',
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=True,
    console=True,
    disable_windowed_traceback=False,
    argv_emulation=False,
    target_arch=None,
    codesign_identity=None,
    entitlements_file=None,
)
coll = COLLECT(
    exe,
    a.binaries,
    a.zipfiles,
    a.datas,
    strip=False,
    upx=True,
    upx_exclude=[],
    name='FloHsm',
)
