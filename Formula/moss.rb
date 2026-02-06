class Moss < Formula
  desc "Moss Fantasy Console"
  homepage "https://github.com/moss-32/moss"

  version "0.1.10"


  on_linux do

    on_arm do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-linux-aarch64.tar.gz"
      sha256 "d1f829ae092f8e8f5e1d8877bef9995fdd9e3d64b5fc92f5fdbc418f2876b29e"
    end

    on_intel do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-linux-x86_64.tar.gz"
      sha256 "251846d3080d9fbc77a43c1c00c3b9f4082278af42cd389de6a7fb720d8c1aa0"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-macos-arm64.tar.gz"
      sha256 "27c309fb25f8f2c96edf87ea00017d25a5a82898340bfcf7b3410ff65b591172"
    end

    on_intel do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-macos-x86_64.tar.gz"
      sha256 "1acd779bbc0eb822ae4f36d9a1dbf19129778d449d99ae843a5bb085061b2313"
    end
  end



def install
    os = OS.mac? ? "macos" : "linux"

    arch = Hardware::CPU.arm? ? (OS.mac? ? "arm64" : "aarch64") : "x86_64"

    bin.install "moss-#{os}-#{arch}" => "moss"
  end

end
