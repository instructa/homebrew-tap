class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.14/planr-darwin-arm64.tar.gz"
      sha256 "17499785da09ff2ad2acdbb191f6c7b67e8a66902c7ffd2988cf4a48a7884448"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.14/planr-darwin-x86_64.tar.gz"
      sha256 "2ab41a1aef071b6e9d5be7735e95de78cfe283a5899deb1886c8adf66760e06d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.14/planr-linux-arm64.tar.gz"
      sha256 "42ed8812a2522d5c93337b3316dd054da2db67ab8f781bce3570d516544787f3"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.14/planr-linux-x86_64.tar.gz"
      sha256 "bcb91b53a94d0fedc2abdc341591a9857030ba5d926f2e0850d5b75c9567111e"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
