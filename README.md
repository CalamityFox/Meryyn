<div align="center">
<img src="misc/media/logo.svg" width="256"/>

**[rpm-ostree](https://coreos.github.io/rpm-ostree)/[bootc](https://bootc.dev) system with [niri](https://github.com/niri-wm/niri) and [noctalia](https://noctalia.dev/shell)**

<img src="misc/media/handcoded.png" height="50"/> <img src="misc/media/lgbtfriendly.gif" height="50"/>

[How it works](README.md#-how-it-works) ~ [Installation](README.md#-how-it-works) ~ [Security](README.md#-security) ~ [Contact](README.md#-contact)
</div>

<div align="center">
<img src="misc/media/divider.gif" width="500"/>

<br>
<br>
<br>


# <img src="misc/media/flower.png" width="20"/> TL:DR <img src="misc/media/flower.png" width="20"/>
  
</div>

`Meryyn` is an atomic/immutable Linux distro based on [Fedora](https://fedoraproject.org). My main priorities are to make it as stable and reliable as possible, while having more private default settings than mainline Fedora, while including the [Niri](https://github.com/niri-wm/niri) window manager.

It's a personal project and is not currently ready for use.

<div align="center">
<img src="misc/media/divider.gif" width="500"/>

<br>
<br>
<br>

# <img src="misc/media/flower.png" width="20"/> How it works <img src="misc/media/flower.png" width="20"/>
  
</div>

`Meryyn`'s [**build.yml**](.github/workflows/build.yml) obtains the latest [Silverblue](https://fedoraproject.org/atomic-desktops/silverblue) image and modifies it according to the options laid out in the [**Containerfile**](Containerfile), rechunks it with [Chunkah](https://github.com/coreos/chunkah), and signs it with [Cosign](https://github.com/sigstore/cosign) before uploading it to GitHub's [Container Registry](https://github.blog/news-insights/product-news/introducing-github-container-registry).

I pre-install a few applications like the [LibreWolf](https://librewolf.net) browser, [Thunderbird](https://thunderbird.net) e-mail client, and several [GNOME Core/Circle](https://apps.gnome.org) apps. For a full list of all software included in `Meryyn`, check the [**Containerfile**](Containerfile).

Additional software can be installed with [Bazaar](https://apps.gnome.org/Bazaar). If a package isn't available as a [Flatpak](https://flathub.org), you can [layer](https://docs.fedoraproject.org/en-US/atomic-desktops/getting-started/#package-layering) RPMs or use [toolbx](https://containertoolbx.org/).

<div align="center">
<img src="misc/media/divider.gif" width="500"/>

<br>
<br>
<br>

# <img src="misc/media/flower.png" width="20"/> Installation <img src="misc/media/flower.png" width="20"/>
  
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

<br>
<br>
<br>

# <img src="misc/media/flower.png" width="20"/> Security <img src="misc/media/flower.png" width="20"/>
  
</div>

`Meryyn` is a personal project, so it's obviously not up to the same security standards as a proper distro like mainline Fedora, Debian, Mint etc. Nonetheless, I'm doing my best to make sure the project is reasonably secure:

- My GitHub account uses a 22-word diceware phrase and TOTP 2FA
- **git** actions are done using an SSH key.
- My GitHub credentials and the SSH key only exist on my LUKS encrypted laptop, as well as it's encrypted backups.
- `Meryyn`'s builds are signed with [Cosign](https://github.com/sigstore/cosign) using [GitHub Secrets](https://docs.github.com/en/actions/how-tos/write-workflows/choose-what-workflows-do/use-secrets).
- Additional packages are downloaded from either the official [Fedora repo](https://packages.fedoraproject.org) or from verified developers on [Flathub](https://flathub.org).

In the future I plan to write my own out-of-the-box permissions for the Flatpaks that come pre-installed with `Meryyn`, but the default configuration is already secure enough for most use-cases.

<div align="center">
<img src="misc/media/divider.gif" width="500"/>

<br>
<br>
<br>

# <img src="misc/media/flower.png" width="20"/> Contact <img src="misc/media/flower.png" width="20"/>
  
</div>

If you encounter a bug, please report it in the [Issue Tracker](issues).

For anything else, including security/vulnerability disclosures, contact me at [calamityfox@purelymail.com](mailto:calamityfox@purelymail.com). You can encrypt your message with my [**age**](misc/public-key.age) or [**gpg**](misc/public-key.gpg) public keys. Encrypted emails without attached public keys won't be replied to, since I'd have to resort to plaintext which the sender may not want.

# 

<div align="center">
<img src="misc/media/terminallyonline.gif" width="220"/> <img src="misc/media/gendermalware.gif" width="220"/> <img src="misc/media/ancientinternetcreature.gif" width="220"/> 

<img src="misc/media/sourcecodeforlife.gif" width="220"/>  <img src="misc/media/dontrushme.gif" width="220"/>
</div>

