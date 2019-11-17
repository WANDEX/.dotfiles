# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

import themes.dracula.draw

# Uncomment this to still load settings configured via autoconfig.yml
# config.load_autoconfig()

# Always restore open sites when qutebrowser is reopened.
# Type: Bool
c.auto_save.session = True

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'file://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')


# theme
themes.dracula.draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    },
    'font': {
        # 'family': 'Menlo, Terminus, Monaco, Monospace',
        'family': 'UbuntuMono Nerd Font',
        'size': 12
    }
})

# c.content.user_stylesheets = ["look/solarized-everything-css/css/darculized/darculized-all-sites.css"]
s_css_dir = "css/"
s_style_postfix = "-all-sites.css"
s_family = "darculized"
s_style_full = s_css_dir + s_family + "/" + s_family + s_style_postfix
c.content.user_stylesheets = [s_style_full]

## rebindings
## Core Mappings For Colemak

def remap_in_all_modes(remappings):
    for mode in c.bindings.default:
        new_dict = {}
        for key in c.bindings.default[mode]:
            if key[0] == '<':
                # ignore meta-characters
                new_dict[key] = c.bindings.default[mode][key]
            else:
                new_key = ""
                for key_character in key:
                    new_key_character = key_character
                    if key_character in remappings:
                        new_key_character = remappings[key_character]
                    new_key += new_key_character
                new_dict[new_key] = c.bindings.default[mode][key]
        c.bindings.default[mode] = new_dict

# remappings = {'i': 's', 'h': 'n', 'j': 'e', 'k': 'u', 'l': 'i', 'n': 'k', 's': 'j', 'u': 'h', 'I': 'S', 'H': 'N', 'J': 'E', 'K': 'U', 'L': 'I', 'N': 'K', 'S': 'J', 'U': 'H'}
remappings = {'i': 's', 'j': 'n', 'k': 'e', 'l': 'i', 'n': 'k', 's': 'j', 'I': 'S', 'J': 'N', 'K': 'E', 'L': 'I', 'N': 'K', 'S': 'J'}

remap_in_all_modes(remappings)

