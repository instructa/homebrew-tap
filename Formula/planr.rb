class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.7.2/planr-darwin-arm64.tar.gz"
      sha256 "73e33363f17b9598f2efcf0ee733bcc033ea044e054518490d5d22fb2045923f"
    else
      url "https://github.com/instructa/planr/releases/download/v1.7.2/planr-darwin-x86_64.tar.gz"
      sha256 "0d29d3433fb07f25c7454d407908f4f134fbff3dbefa32d7d2cd409b9c97421f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.7.2/planr-linux-arm64.tar.gz"
      sha256 "182a09e962f4777534b10064e15b244c1b00eb5bf01db7a3a759e1a813318978"
    else
      url "https://github.com/instructa/planr/releases/download/v1.7.2/planr-linux-x86_64.tar.gz"
      sha256 "aaac06965223a3825b113e899e7acdd3de18ec8bb4d1e06edb8f4c623325c978"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
