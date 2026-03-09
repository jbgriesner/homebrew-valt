class Valt < Formula
  desc "Keyboard-driven terminal password manager — encrypted, offline, no cloud"
  homepage "https://github.com/jbgriesner/valt"
  version "0.2.6"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/jbgriesner/valt/releases/download/v0.2.6/valt-v0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "f2d123ae44d5c859532130438379a12398d8acd7f1024b655b9f4bcd03506ca4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jbgriesner/valt/releases/download/v0.2.6/valt-v0.2.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37b53b20a428be7652a58486ccb5be5636a4f3077ffbfa8ac99082e05df3f5fd"
    end
  end

  def install
    bin.install "valt"
  end

  test do
    assert_match "password manager", shell_output("#{bin}/valt --help")
  end
end
