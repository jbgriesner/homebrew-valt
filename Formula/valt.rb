class Valt < Formula
  desc "Keyboard-driven terminal password manager — encrypted, offline, no cloud"
  homepage "https://github.com/jbgriesner/valt"
  version "0.2.7"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/jbgriesner/valt/releases/download/v0.2.7/valt-v0.2.7-aarch64-apple-darwin.tar.gz"
      sha256 "c5ac4fe931adae693d061b7d7173b39c8362821fe62af48b88b18f101b9e68ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jbgriesner/valt/releases/download/v0.2.7/valt-v0.2.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "074c8e805fe64bf403e2222a729839824743f80aec4f2536b3e60700c8f1d66f"
    end
  end

  def install
    bin.install "valt"
  end

  test do
    assert_match "password manager", shell_output("#{bin}/valt --help")
  end
end
