class Valt < Formula
  desc "Keyboard-driven terminal password manager — encrypted, offline, no cloud"
  homepage "https://github.com/jbgriesner/valt"
  version "0.2.8"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/jbgriesner/valt/releases/download/v0.2.8/valt-v0.2.8-aarch64-apple-darwin.tar.gz"
      sha256 "749907ec42bd4f3ec9a7b130fa58319b856663873b64c4f6af90650ffed85a29"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jbgriesner/valt/releases/download/v0.2.8/valt-v0.2.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c14998bdffaf2865eaa542478927cfc79415156ecae1e55ddccf2c8d0ca4eb18"
    end
  end

  def install
    bin.install "valt"
  end

  test do
    assert_match "password manager", shell_output("#{bin}/valt --help")
  end
end
