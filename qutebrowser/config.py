# Load any settings you've already configured via the qutebrowser UI
config.load_autoconfig(True)

c.auto_save.session = True

# ==========================================
# Tabs Formatting & Layout
# ==========================================

# Use the same font as your terminal for consistency
c.fonts.tabs.selected = '11pt "IosevkaTerm Nerd Font Propo"'
c.fonts.tabs.unselected = '11pt "IosevkaTerm Nerd Font Propo"'

# Add breathing room around the text inside the tabs
c.tabs.padding = {"top": 4, "bottom": 4, "left": 6, "right": 6}

# Tab width behavior (optional)
c.tabs.min_width = -1
c.tabs.max_width = 175

# Hide the tab indicator (the colored vertical line) for a flatter, modern look
c.tabs.indicator.width = 0

# ==========================================
# Webpage Dark Mode Settings
# ==========================================

# Force dark mode globally...
c.colors.webpage.darkmode.enabled = True

# ...BUT disable forced dark mode specifically for YouTube
# so the video player doesn't become transparent
config.set("colors.webpage.darkmode.enabled", False, "*://*.youtube.com/*")

# Prevent dark mode from messing with images and media globally
c.colors.webpage.darkmode.policy.images = "never"

# Tell websites you prefer native dark mode when available
c.colors.webpage.preferred_color_scheme = "dark"
c.colors.webpage.bg = "#121212"

# ==========================================
# Deep Charcoal UI Theme
# ==========================================

# Core Palette
bg_base = "#161616"  # Deep background (blends well with web dark mode)
bg_alt = "#1e1e1e"  # Slightly lighter for contrast
bg_sel = "#3a3a3a"  # Selection background
fg_base = "#aaaaaa"  # Dimmed text for inactive items
fg_active = "#ffffff"  # Bright text for active items
accent = "#ffaa00"  # Subtle amber accent for hints and matches

# Tabs
c.colors.tabs.bar.bg = bg_base
c.colors.tabs.even.bg = bg_base
c.colors.tabs.odd.bg = bg_base
c.colors.tabs.even.fg = fg_base
c.colors.tabs.odd.fg = fg_base

c.colors.tabs.selected.even.bg = bg_sel
c.colors.tabs.selected.odd.bg = bg_sel
c.colors.tabs.selected.even.fg = fg_active
c.colors.tabs.selected.odd.fg = fg_active

# Pinned Tabs
c.colors.tabs.pinned.even.bg = bg_alt
c.colors.tabs.pinned.odd.bg = bg_alt
c.colors.tabs.pinned.even.fg = fg_base
c.colors.tabs.pinned.odd.fg = fg_base
c.colors.tabs.pinned.selected.even.bg = bg_sel
c.colors.tabs.pinned.selected.odd.bg = bg_sel

# Statusbar
c.colors.statusbar.normal.bg = bg_base
c.colors.statusbar.normal.fg = fg_base
c.colors.statusbar.command.bg = bg_base
c.colors.statusbar.command.fg = fg_active
c.colors.statusbar.insert.bg = "#2e4a3d"  # Subtle green tint when typing
c.colors.statusbar.insert.fg = fg_active
c.colors.statusbar.caret.bg = "#5c3333"  # Subtle red tint in caret mode

# Command Line & Completion Menu (when you press ':')
c.colors.completion.fg = fg_base
c.colors.completion.even.bg = bg_base
c.colors.completion.odd.bg = bg_alt
c.colors.completion.item.selected.bg = bg_sel
c.colors.completion.item.selected.fg = fg_active
c.colors.completion.item.selected.match.fg = accent
c.colors.completion.match.fg = accent

# Hints (when you press 'f' to click links)
c.colors.hints.bg = accent
c.colors.hints.fg = "#000000"
c.colors.hints.match.fg = "#ffffff"
c.hints.border = f"1px solid {accent}"
# ==========================================
# Custom Keybindings
# ==========================================

# Navigate tabs left and right with Shift+H and Shift+L
config.bind("H", "tab-prev")
config.bind("L", "tab-next")

# Free up J and K (Optional: you can map these to something else later,
# like scrolling up/down faster, but unbinding them stops the default tab behavior)
config.unbind("J")
config.unbind("K")

# Neovim-style history navigation (Jump Back / Jump Forward)
config.bind("<Ctrl-o>", "back")
config.bind("<Ctrl-i>", "forward")
