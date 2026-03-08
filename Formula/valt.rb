class Valt < Formula
  desc "Keyboard-driven terminal password manager — encrypted, offline, no cloud"
  homepage "https://github.com/jbgriesner/valt"
  version "0.2.3"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/jbgriesner/valt/releases/download/v0.2.3/valt-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "4ee78c90dba5da415283f4980d24af305aee0074b24a53936cd29025b0852e28"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jbgriesner/valt/releases/download/v0.2.3/valt-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d354af9eb347a71a7f39a8d8854c6a16e08c645813be07bb4b0b6aa10edb7368"
    end
  end

  def install
    bin.install "valt"
  end

  test do
    assert_match "password manager", shell_output("#{bin}/valt --help")
  end
end
