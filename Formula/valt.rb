class Valt < Formula
  desc "Keyboard-driven terminal password manager — encrypted, offline, no cloud"
  homepage "https://github.com/jbgriesner/valt"
  version "0.1.6"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/jbgriesner/valt/releases/download/v0.1.6/valt-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "42d0b3dbf1b5ec6a467b2587aaeaf7646ee45d042e8592fc8016afdbfdef0a9d"
    end
  end

  on_linux do
    url "https://github.com/jbgriesner/valt/releases/download/v0.1.6/valt-v0.1.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "58aa26d3ca9ddcb5462e1cb53caf4267c19927ef62996588869445ed7d20af24"
  end

  def install
    bin.install "valt"
  end

  test do
    assert_predicate bin/"valt", :executable?
  end
end
