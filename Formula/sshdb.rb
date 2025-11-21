class Sshdb < Formula
  desc "Keyboard-first SSH library and launcher TUI"
  homepage "https://github.com/ruphy/sshdb"
  version "0.16.11"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ruphy/sshdb/releases/download/v\#{version}/sshdb-macos-aarch64.tar.gz"
      sha256 "a8ce53067c4ab84dafc3821c65359ba588564f39e4551d8964badce3476b308d"
    end
    on_intel do
      url "https://github.com/ruphy/sshdb/releases/download/v\#{version}/sshdb-macos-x86_64.tar.gz"
      sha256 "35ad0dd791e75299da192366888aca057064afe373ef2383fa41322a01d9e237"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ruphy/sshdb/releases/download/v\#{version}/sshdb-linux-x86_64.tar.gz"
      sha256 "32a69d939e4e011a7ea065077939999e286fbe3de3132745d9dd59230a419376"
    end
  end

  def install
    bin.install "sshdb"
  end

  test do
    system "#{bin}/sshdb", "--help"
  end
end
