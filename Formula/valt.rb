class Valt < Formula
  desc "Keyboard-driven terminal password manager — encrypted, offline, no cloud"
  homepage "https://github.com/jbgriesner/valt"
  version "0.1.3"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/jbgriesner/valt/releases/download/v0.1.3/valt-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "6b135b7528076e9562a82f9aadc3e6a4f68bd522c538dfc49b0348d8a6c16c17"
    end
  end

  on_linux do
    url "https://github.com/jbgriesner/valt/releases/download/v0.1.3/valt-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3ec2f737b1ae85ead6762febb5f2d4b0f7398c9a3f8f25ab39c5234bae2cf057"
  end

  def install
    bin.install "valt"
  end

  test do
    assert_predicate bin/"valt", :executable?
  end
end
