<div align="center">
<img src="misc/media/logo.svg" width="256"/>

**[rpm-ostree](https://coreos.github.io/rpm-ostree)/[bootc](https://bootc.dev) system with [niri](https://github.com/niri-wm/niri) and [noctalia](https://noctalia.dev/shell)**

<img src="misc/media/handcoded.png" height="50"/> <img src="misc/media/lgbtfriendly.gif" height="50"/> 
</div>

# <img src="misc/media/flower.png" width="25"/> Intro🦆tion

`Risk`'s [**build.yml**](.github/workflows/build.yml) obtains the latest [Silverblue](https://fedoraproject.org/atomic-desktops/silverblue) image and modifies it according to the options laid out in the [**Containerfile**](Containerfile), and imports [**/system**](/system)'s contents.

`Risk` comes with various pre-installed apps like the [LibreWolf](https://librewolf.net) browser, [Thunderbird](https://thunderbird.net) e-mail client, and various [GNOME Core/Circle](https://apps.gnome.org) apps. For a full list of all software included in `Risk`, check the [**Containerfile**](Containerfile).

Additional software can be installed with [Bazaar](https://apps.gnome.org/Bazaar). If a package isn't available as a [Flatpak](https://flathub.org), you can [layer](https://docs.fedoraproject.org/en-US/atomic-desktops/getting-started/#package-layering) RPMs or use [toolbx](https://containertoolbx.org/).

# <img src="misc/media/flower.png" width="25"/> Installation

### Rebasing

```
# Pin current deployment
sudo ostree admin pin 0

# Rebase with rpm-ostree:
rpm-ostree rebase ostree-unverified-registry:ghcr.io/calamityfox/risk

# OR rebase with bootc:
sudo bootc switch --enforce-container-sigpolicy ghcr.io/calamityfox/risk:latest
```

### Fresh install
ISO builds will happen... at some point. Right now I'm working on other things first

# <img src="misc/media/flower.png" width="25"/> Contact

If you encounter a bug, please report it in the [Issue Tracker](issues).

For anything else, including security/vulnerability disclosures, contact me at [calamityfox@purelymail.com](mailto:calamityfox@purelymail.com). You can encrypt your message with my [**age**](misc/public-key.age) or [**gpg**](misc/public-key.gpg) public keys.

# 

<div align="center">
<img src="misc/media/terminallyonline.gif" width="220"/> <img src="misc/media/gendermalware.gif" width="220"/> <img src="misc/media/ancientinternetcreature.gif" width="220"/> 

<img src="misc/media/sourcecodeforlife.gif" width="220"/>  <img src="misc/media/dontrushme.gif" width="220"/>
</div>
