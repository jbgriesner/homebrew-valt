class Valt < Formula
  desc "Keyboard-driven terminal password manager — encrypted, offline, no cloud"
  homepage "https://github.com/jbgriesner/valt"
  version "0.2.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/jbgriesner/valt/releases/download/v0.2.2/valt-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "e78285bac60ec55aab2d395f89bebfa5342f27cd007be738777d7d1e4c4a312c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jbgriesner/valt/releases/download/v0.2.2/valt-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e0cd845d33e88acc4d370219af1ac48eaea34cf1a1ee5b3393f857e33c6a8fd7"
    end
  end

  def install
    bin.install "valt"
  end

  test do
    assert_match "password manager", shell_output("#{bin}/valt --help")
  end
end
