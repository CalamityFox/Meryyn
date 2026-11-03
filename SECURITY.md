# <img src="misc/media/flower.png" width="25"/> `Risk`'s security

`Risk` is currently a personal project, so it's obviously not up to the same security standards as a proper distro like mainline Fedora, Debian, Mint etc. Nonetheless, I'm doing my best to make sure the project is reasonably secure:

My GitHub account is protected with a 22-word diceware passphrase and TOTP-based 2FA saved to a KeePass vault on my LUKS-encrypted laptop as well as my (also LUKS) backup drive.

`Risk`'s builds are signed with a [Cosign](https://github.com/sigstore/cosign) key using [GitHub Secrets](https://docs.github.com/en/actions/how-tos/write-workflows/choose-what-workflows-do/use-secrets). The private key is also saved to my KeePass vault.

Packages are downloaded directly from either the official [Fedora repo](https://packages.fedoraproject.org) or from verified developers on [Flathub](https://flathub.org).

In the future I plan to write my own out-of-the-box permissions for the Flatpaks that come pre-installed with `Risk`, but the default configuration is already secure enough for most use-cases.

# <img src="misc/media/flower.png" width="25"/> Reporting a vulnerability in `Risk`

If you find a vulnerability in `Risk` or one of the packages it uses, please contact both me an the original maintainer of the affected package.

My email is [**calamityfox@purelymail.com**](mailto:calamityfox@purelymail.com). You can optionally encrypt your message with either my [**age**](/misc/public-key.age) or [**gpg**](/misc/public-key.gpg) keys. Encrypted messages sent without an attached **age** or **gpg** public-key will be read but won't be replied to.
