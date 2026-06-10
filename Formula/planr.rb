class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.1/planr-darwin-arm64.tar.gz"
      sha256 "aa4c6cd8f48d123597fe184781f8d668af748ad695ab8d7f9f9b2ab8faddf493"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.1/planr-darwin-x86_64.tar.gz"
      sha256 "1e4eb62eb0dc0bfab50c4183faeda82358a3d15a4cf50b73ebb4f6684098beee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.1/planr-linux-arm64.tar.gz"
      sha256 "de0f4117bf92ebfd6183e52e3185f17b6f6ac1dd9e7f62fa88e688c5680f7aeb"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.1/planr-linux-x86_64.tar.gz"
      sha256 "ca759883c4d2a7db857fc9784d33b3ab3c8ee8a4bdb1cea9996060fdb3f88749"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
