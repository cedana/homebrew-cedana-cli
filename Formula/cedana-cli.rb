# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CedanaCli < Formula
  desc ""
  homepage "cedana.ai"
  version "0.2.8"

  on_macos do
    url "https://github.com/cedana/cedana-cli/releases/download/v0.2.8/cedana-cli_0.2.8_darwin_amd64.tar.gz"
    sha256 "b6ca1cb59a9a8a14d77ea0acb2808821b2565cac42ef573aa5a43eedcbec0db6"

    def install
      bin.install "cedana-cli"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the CedanaCli
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cedana/cedana-cli/releases/download/v0.2.8/cedana-cli_0.2.8_linux_amd64.tar.gz"
      sha256 "ffefeaf67947860c960ede0269b36b105e08b70e5ec73bbd60a7f651e80cd4fd"

      def install
        bin.install "cedana-cli"
      end
    end
  end
end
