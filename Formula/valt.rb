class Valt < Formula
  desc "Keyboard-driven terminal password manager — encrypted, offline, no cloud"
  homepage "https://github.com/jbgriesner/valt"
  version "0.2.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/jbgriesner/valt/releases/download/v0.2.1/valt-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "99584b19a57b5cd3143f1a88726825e4ac9efe3223ea1f0692410ca788ac9ad4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jbgriesner/valt/releases/download/v0.2.1/valt-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3d495bf1829492806e8f2e9a65295b1efa24dc26f6a53bb92f10010ca6c692c"
    end
  end

  def install
    bin.install "valt"
  end

  test do
    assert_match "password manager", shell_output("#{bin}/valt --help")
  end
end
