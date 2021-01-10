c.aliases = {
    "w": "session-save",
    "q": "close",
    "qa": "quit",
    "wq": "quit --save",
    "wqa": "quit --save",
}

config.bind("xb", "config-cycle statusbar.hide")
config.bind("xt", "config-cycle tabs.show always switching")
config.bind("xx", "config-cycle statusbar.hide ;; config-cycle tabs.show always switching")
config.bind(",m", "hint links spawn mpv {hint-url}")

# bukuadd...

c.downloads.location.directory = "/home/tmonson/temp"

c.editor.command = ["st", "-e", "nvim", "{}"]

c.input.partial_timeout = 10000

c.url.searchengines = {
    "DEFAULT": "https://search.snopyta.org/?q={}&categories=general&language=en-US",
    "aw": "https://wiki.archlinux.org/?search={}",
    "ar": "https://aur.archlinux.org/packages/{}",
    "az": "https://www.amazon.com/s?k={}",
    "ctan": "https://www.ctan.org/search?phrase={}",
    "et": "https://www.etymonline.com/search?q={}",
    "gg": "https://google.com/search?q={}",
    "gh": "https://github.com/search?q={}",
    "hg": "https://hoogle.haskell.org/?hoogle={}",
    "lg": "http://libgen.rs/search.php?req={}",
    "ph": "https://plato.stanford.edu/search/searcher.py?query={}",
    "qi": "https://quoteinvestigator.com/?s={}",
    "rd": "https://old.reddit.com/search?q={}",
    "sh": "http://gen.lib.rus.ec/scimag/?q={}",
    "ub": "https://www.urbandictionary.com/define.php?term={}",
    "usps": "https://tools.usps.com/go/TrackConfirmAction?qtc_tLabels1={}",
    "wk": "https://en.wikipedia.org/wiki/Special:Search?search={}",
    "yt": "https://www.youtube.com/results?search_query={}"
}

c.url.start_pages = "file:///home/tmonson/.config/startpage/index.html"

