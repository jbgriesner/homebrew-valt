class Valt < Formula
  desc "Keyboard-driven terminal password manager — encrypted, offline, no cloud"
  homepage "https://github.com/jbgriesner/valt"
  version "0.1.3"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/jbgriesner/valt/releases/download/v0.1.3/valt-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "9f082b0445b6882e53d2ade30c4a3715a15b37bf95491c4dfad7e723a0d274e0"
    end
  end

  on_linux do
    url "https://github.com/jbgriesner/valt/releases/download/v0.1.3/valt-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a5159b38e1a3e75fe5ec6f8843d77490812a8d659ed452b1c17e21a5c7030a81"
  end

  def install
    bin.install "valt"
  end

  test do
    assert_predicate bin/"valt", :executable?
  end
end
