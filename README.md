## Why

I've always had my eye on flagships, especially Samsung's. It's not uncommon to see someone listing one with a broken screen for dirt cheap. The problem is, Samsung has its own quirks that can sometimes become annoying to deal with, both on the software and hardware side.

## Guidelines

I assume you've already rooted your device(s) — we'll be modifying system-level files.

**Note:** Magisk only. That's the root method I use, so scripts are written + tested against Magisk's hooks. KernelSU / APatch users may need to adapt paths.

## Tree

```
/data/
└── /adb/
    ├── /service.d
    └── /post-fs-data.d
```

Explain :

-- `post-fs-data.d` runs before Android framework start

-- `service.d` runs after boot complete, system services up

Notes :

please don't forget to `chmod 755` the bash scripts
