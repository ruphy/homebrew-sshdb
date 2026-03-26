class Sshdb < Formula
  desc "Keyboard-first SSH library and launcher TUI"
  homepage "https://github.com/ruphy/sshdb"
  version "0.18.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ruphy/sshdb/releases/download/v#{version}/sshdb-macos-aarch64.tar.gz"
      sha256 "49f7481b41192de41ab9472673ccaea4aae3d14c591921d00a4518a3c609e018"
    end
    on_intel do
      url "https://github.com/ruphy/sshdb/releases/download/v#{version}/sshdb-macos-x86_64.tar.gz"
      sha256 "a03e54e0855db774d3ae6473261080c0728b4c73db9fd7fd27aa47f4cccad1de"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ruphy/sshdb/releases/download/v#{version}/sshdb-linux-x86_64.tar.gz"
      sha256 "946b800b5e9d2993dc4b2a62113c8ae6e48135e24951a18cac0446432679f6d2"
    end
  end

  def install
    bin.install "sshdb"
  end

  test do
    system "#{bin}/sshdb", "--help"
  end
end
