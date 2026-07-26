class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.7.3/planr-darwin-arm64.tar.gz"
      sha256 "a184c808e5a6275a8cfde11c0c673a145762fb3b2a05a754dcfdf458ccbe8dc1"
    else
      url "https://github.com/instructa/planr/releases/download/v1.7.3/planr-darwin-x86_64.tar.gz"
      sha256 "c4d74fa025b34557b36dee5cdee25521c98a96899cbf71848c11670cf02ec9c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.7.3/planr-linux-arm64.tar.gz"
      sha256 "24d243b3e5def505b08acfe411c1ce3e309d5ac42ba587a8a931570a1d58f1fd"
    else
      url "https://github.com/instructa/planr/releases/download/v1.7.3/planr-linux-x86_64.tar.gz"
      sha256 "7adb76b4b40387ec4cefd1f7497928fd13ae51c8993fe817329cfeba18eb693c"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
