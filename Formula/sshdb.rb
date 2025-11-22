class Sshdb < Formula
  desc "Keyboard-first SSH library and launcher TUI"
  homepage "https://github.com/ruphy/sshdb"
  version "0.16.14"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ruphy/sshdb/releases/download/v#{version}/sshdb-macos-aarch64.tar.gz"
      sha256 "a4969ae2350f4f8080e51deb33c5081bbda0a873ddf7870bb534ec9c55a97c01"
    end
    on_intel do
      url "https://github.com/ruphy/sshdb/releases/download/v#{version}/sshdb-macos-x86_64.tar.gz"
      sha256 "ef83ff6f83f9758ce2479da57e1f7fc0062e7ed7a3180d3f097c5114639d5d21"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ruphy/sshdb/releases/download/v#{version}/sshdb-linux-x86_64.tar.gz"
      sha256 "6f9c04f582ff85ee0f2e66abcb13d1a843de95e38abad35dbabf6697f251406d"
    end
  end

  def install
    bin.install "sshdb"
  end

  test do
    system "#{bin}/sshdb", "--help"
  end
end
