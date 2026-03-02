class Valt < Formula
  desc "Keyboard-driven terminal password manager — encrypted, offline, no cloud"
  homepage "https://github.com/jbgriesner/valt"
  version "0.1.8"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/jbgriesner/valt/releases/download/v0.1.8/valt-v0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "60961240ef0ef340e3d4c4442f211981c9bb36c2e4317d794d7ceb6c1b7dad9a"
    end
  end

  on_linux do
    url "https://github.com/jbgriesner/valt/releases/download/v0.1.8/valt-v0.1.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d3df56f42cd0e410ecd67ab8c47ce73851a8cd6b0d46a12cf3cd16a6979720ef"
  end

  def install
    bin.install "valt"
  end

  test do
    assert_predicate bin/"valt", :executable?
  end
end
