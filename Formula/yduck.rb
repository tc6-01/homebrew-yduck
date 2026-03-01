class Yduck < Formula
  desc "Mac dev environment & AI coding tools setup CLI"
  homepage "https://github.com/tc6-01/YangDuck"
  version "0.1.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://gh-proxy.com/https://github.com/tc6-01/YangDuck/releases/download/v0.1.11/yduck-darwin-arm64"
      sha256 "5693270e58541471c820617457009a2063e037cbe432cd8169f681f149c29673"
    else
      url "https://gh-proxy.com/https://github.com/tc6-01/YangDuck/releases/download/v0.1.11/yduck-darwin-amd64"
      sha256 "a10c0ffad81e5e245ac7fea1c01ab6841c977e408f61f27838de37ce10fb151b"
    end
  end

  def install
    binary = Dir["yduck-darwin-*"].first
    bin.install binary => "yduck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yduck --version 2>&1", 0)
  end
end
