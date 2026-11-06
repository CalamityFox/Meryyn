<div align="center">
<img src="misc/media/logo.svg" width="256"/>

**[rpm-ostree](https://coreos.github.io/rpm-ostree)/[bootc](https://bootc.dev) system with [niri](https://github.com/niri-wm/niri) and [noctalia](https://noctalia.dev/shell)**

[<img src="misc/media/handcoded.png" width="100"/>](https://www.media.mit.edu/publications/your-brain-on-chatgpt)
[<img src="misc/media/queercoded.png" width="115"/>](https://www.rainbowrailroad.org)

<br>

[<img src="misc/media/readme.png" width="120"/>](README.md#-how-it-works-)
[<img src="misc/media/install.png" width="120"/>](README.md#-install-))
[<img src="misc/media/bugreport.png" width="120"/>](https://github.com/CalamityFox/Meryyn/issues)
[<img src="misc/media/contact.png" width="120"/>](README.md#-contact-)

<img src="misc/media/divider.gif" width="500"/>

<br>
<br>
<br>

`Meryyn` is an atomic/immutable Linux distro based on [Fedora](https://fedoraproject.org). My main priorities are to make it as stable and reliable as possible, while having more private default settings than mainline Fedora and including the [Niri](https://github.com/niri-wm/niri) window manager.

It's a personal project and is not currently ready for use.

<br>
<br>

<img src="misc/media/divider.gif" width="500"/>

<br>
<br>

<img src="misc/media/terminallyonline.gif" width="220"/>
<img src="misc/media/gendermalware.gif" width="220"/>
<img src="misc/media/ancientinternetcreature.gif" width="220"/>
<img src="misc/media/disabledpride.gif" width="220"/>
<img src="misc/media/sourcecodeforlife.gif" width="220"/> 
<img src="misc/media/dontrushme.gif" width="220"/>
</div>

<br>
<br>
<br>

<br>
<br>
<br>

<br>
<br>
<br>

<div align="center">

# <img src="misc/media/flower.png" width="20"/> How it works <img src="misc/media/flower.png" width="20"/>
</div>

### Build process

`Meryyn`'s [**build.yml**](.github/workflows/build.yml) obtains the latest [Silverblue](https://fedoraproject.org/atomic-desktops/silverblue) image and modifies it according to the options laid out in the [**Containerfile**](Containerfile), rechunks it with [Chunkah](https://github.com/coreos/chunkah), and signs it with [Cosign](https://github.com/sigstore/cosign) before uploading it to GitHub's [Container Registry](https://github.blog/news-insights/product-news/introducing-github-container-registry).

### Managing software

I pre-install a few applications like the [LibreWolf](https://librewolf.net) browser, [Thunderbird](https://thunderbird.net) e-mail client, and several [GNOME Core/Circle](https://apps.gnome.org) apps. For a full list of all software included in `Meryyn`, check the [**Containerfile**](Containerfile).

All GUI apps are installed as Flatpaks and can be removed. Only the display manager, window manager, shell, and a few CLI utilities are part of the base image and cannot be removed without sacrificing system stability.

Additional software can be installed with [Bazaar](https://apps.gnome.org/Bazaar). If a package isn't available as a [Flatpak](https://flathub.org), you can [layer](https://docs.fedoraproject.org/en-US/atomic-desktops/getting-started/#package-layering) RPMs or use [toolbx](https://containertoolbx.org/).

<div align="center">
<img src="misc/media/divider.gif" width="500"/>
</div>

<br>
<br>
<br>

<div align="center">

# <img src="misc/media/flower.png" width="20"/> Install <img src="misc/media/flower.png" width="20"/>
</div>

### Rebasing

```
# Pin current deployment (not necessary but strongly recommended)
sudo ostree admin pin 0

# Rebase with rpm-ostree:
rpm-ostree rebase ostree-unverified-registry:ghcr.io/calamityfox/meryyn

# OR rebase with bootc:
sudo bootc switch --enforce-container-sigpolicy ghcr.io/calamityfox/meryyn:latest
```

### Fresh install
ISO builds will happen... at some point. Right now I'm working on other things first

<div align="center">
<img src="misc/media/divider.gif" width="500"/>
</div>

<br>
<br>
<br>

<div align="center">

# <img src="misc/media/flower.png" width="20"/> Contact <img src="misc/media/flower.png" width="20"/>
</div>

If you encounter a bug, please report it in the [Issue Tracker](issues).

For anything else, including security/vulnerability disclosures, contact me at [calamityfox@purelymail.com](mailto:calamityfox@purelymail.com).

You can encrypt your message with my [**age**](misc/public-key.age) or [**gpg**](misc/public-key.gpg) public keys. If you encrypt your message, please include your own public **age** or **gpg** public key (either as an attachment or a link to a keyserver), or I won't be able to send a reply without falling back to plaintext.

You can also message me on [Signal](https://signal.org). My username is [`kes.123`](https://signal.me/#eu/nM5aRSJ1kqOL0RtXQHOtgxqk6S5baJuLUNf4RxV1cu1ZIYaKd_dNBIZPvKpvRRZO).

I'll do my best to reply to any messages as soon as possible.

If your issue is related to a third-party package that `Meryyn` uses, please prioritize contacting the developer of that package directly. Any vulnerable packages in `Meryyn` would be disabled until a fix is published.

<div align="center">
<img src="misc/media/divider.gif" width="500"/>
</div>
