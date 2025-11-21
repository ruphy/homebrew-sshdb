class Sshdb < Formula
  desc "Keyboard-first SSH library and launcher TUI"
  homepage "https://github.com/ruphy/sshdb"
  url "https://github.com/ruphy/sshdb/archive/refs/tags/v0.16.6.tar.gz"
  sha256 "a0493ddf3a27d9e14ba123992bffeb4ed714b547fd47c215140994f487a3f5ad"
  license "GPL-3.0-or-later"
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/sshdb", "--help"
  end
end
