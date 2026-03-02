class Valt < Formula
  desc "Keyboard-driven terminal password manager — encrypted, offline, no cloud"
  homepage "https://github.com/jbgriesner/valt"
  version "0.1.9"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/jbgriesner/valt/releases/download/v0.1.9/valt-v0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "f9496132bc12873d1705d34325d994555b5c4b6f625341bff01f3b3f533f40ad"
    end
  end

  on_linux do
    url "https://github.com/jbgriesner/valt/releases/download/v0.1.9/valt-v0.1.9-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "82c591af26f7f02dfbf0c4363832d2bf4eec68c4d6dfd24d3bb698befb515508"
  end

  def install
    bin.install "valt"
  end

  test do
    assert_predicate bin/"valt", :executable?
  end
end
