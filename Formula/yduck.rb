class Yduck < Formula
  desc "Mac dev environment & AI coding tools setup CLI"
  homepage "https://github.com/tc6-01/YangDuck"
  version "0.1.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://gh-proxy.com/https://github.com/tc6-01/YangDuck/releases/download/v0.1.14/yduck-darwin-arm64"
      sha256 "1b1fc24aa5d0e400f97f4097b948541469b62bfbbf96447809f909448df628ad"
    else
      url "https://gh-proxy.com/https://github.com/tc6-01/YangDuck/releases/download/v0.1.14/yduck-darwin-amd64"
      sha256 "5c7c6d6b8659e96501bdedfa441b56c869e30b6321c991a53ae5cb4db142ad6b"
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
