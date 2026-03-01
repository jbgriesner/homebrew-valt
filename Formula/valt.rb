class Valt < Formula
  desc "Keyboard-driven terminal password manager — encrypted, offline, no cloud"
  homepage "https://github.com/jbgriesner/valt"
  version "0.1.3"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/jbgriesner/valt/releases/download/v0.1.3/valt-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "ca8e35de36cf1755316977c0aa4cfaac7c6004dd61b805e2e4b11d7d23633310"
    end
  end

  on_linux do
    url "https://github.com/jbgriesner/valt/releases/download/v0.1.3/valt-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b6aaca9ea08a459f644f449a3f0d9207d325140865242118938ba1fb40d9c023"
  end

  def install
    bin.install "valt"
  end

  test do
    assert_predicate bin/"valt", :executable?
  end
end
