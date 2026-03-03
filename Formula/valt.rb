class Valt < Formula
  desc "Keyboard-driven terminal password manager — encrypted, offline, no cloud"
  homepage "https://github.com/jbgriesner/valt"
  version "0.2.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/jbgriesner/valt/releases/download/v0.2.0/valt-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "6f481588c720e1fd5dc27dff8939c79a061e0f073ead0cec9a7096702dc3d376"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jbgriesner/valt/releases/download/v0.2.0/valt-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fc3ba31abe024ae338a4b9855ffc6be6bb20841714a58688db3beebb6c1198ac"
    end
  end

  def install
    bin.install "valt"
  end

  test do
    assert_match "password manager", shell_output("#{bin}/valt --help")
  end
end
