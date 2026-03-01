class Yduck < Formula
  desc "Mac dev environment & AI coding tools setup CLI"
  homepage "https://github.com/tc6-01/YangDuck"
  version "0.1.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tc6-01/YangDuck/releases/download/v0.1.9/yduck-darwin-arm64"
      sha256 "f7ec0b191b4156fff5b1fcfb149fd20335405c567bea13b517956a6541304444"
    else
      url "https://github.com/tc6-01/YangDuck/releases/download/v0.1.9/yduck-darwin-amd64"
      sha256 "f5b2d16be70fe0c87850d93258709ac93d01e77fe25e6b458b00adb870a616fe"
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
