class Valt < Formula
  desc "Keyboard-driven terminal password manager — encrypted, offline, no cloud"
  homepage "https://github.com/jbgriesner/valt"
  version "0.1.7"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/jbgriesner/valt/releases/download/v0.1.7/valt-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "23e5b8675e64f6fceb700f75680cac07f87c40a5b9fc1a02d1933fa98ea784d0"
    end
  end

  on_linux do
    url "https://github.com/jbgriesner/valt/releases/download/v0.1.7/valt-v0.1.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "18a1da6a876e5e9eb41394da42e0e1a02003e4618866b263ca32bf6deb389adf"
  end

  def install
    bin.install "valt"
  end

  test do
    assert_predicate bin/"valt", :executable?
  end
end
