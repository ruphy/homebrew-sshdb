class Sshdb < Formula
  desc "Keyboard-first SSH library and launcher TUI"
  homepage "https://github.com/ruphy/sshdb"
  url "https://github.com/ruphy/sshdb/archive/refs/tags/v0.16.10.tar.gz"
  sha256 "b6f7529e1a42d0a250d9b921695b892a4d6dc4dfa2c9ef4f45dc1790ad2772ff"
  license "GPL-3.0-or-later"
  depends_on "rust" => :build
  bottle do
    root_url "https://github.com/ruphy/sshdb/releases/download/v0.16.10"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "9a4ac8c14961f9f9913c39c67c33e5c95f92657da4767994934b7024ca52905d"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "9a4ac8c14961f9f9913c39c67c33e5c95f92657da4767994934b7024ca52905d"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "9a4ac8c14961f9f9913c39c67c33e5c95f92657da4767994934b7024ca52905d"
    sha256 cellar: :any_skip_relocation, x86_64_sonoma: "1877c5ccac7666033441609552a6ae460b48f2ee6c9cbda85699c0a4355e0c9d"
    sha256 cellar: :any_skip_relocation, x86_64_ventura: "1877c5ccac7666033441609552a6ae460b48f2ee6c9cbda85699c0a4355e0c9d"
    sha256 cellar: :any_skip_relocation, x86_64_monterey: "1877c5ccac7666033441609552a6ae460b48f2ee6c9cbda85699c0a4355e0c9d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "825e5a83f842d1cf2122718c5046ef80feda3019c14442b0269b56921de5d0f6"
  end
  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin_path = "sshdb-macos-aarch64.tar.gz"
      else
        bin_path = "sshdb-macos-x86_64.tar.gz"
      end
    elsif OS.linux?
      bin_path = "sshdb-linux-x86_64.tar.gz"
    end

    if bin_path
      bin_url = "https://github.com/ruphy/sshdb/releases/download/v\#{version}/\#{bin_path}"
      system "curl", "-L", "-o", bin_path, bin_url
      system "tar", "xzf", bin_path
      bin.install "sshdb"
      rm bin_path
    else
      system "cargo", "install", *std_cargo_args
    end
  end

  test do
    system "#{bin}/sshdb", "--help"
  end
end
