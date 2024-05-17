# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bert < Formula
  desc "CLI benchmarking tool"
  homepage "https://sha1n.github.io/bert/"
  version "2.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/sha1n/bert/releases/download/v2.4.1/bert_2.4.1_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4f96e1c8c2a4f589d1669657825f6d9306d8040f793aa7b57de55c3a21b762ce"

      def install
        bin.install "bert"
        bash_completion.install "completions/bert.bash" => "bert"
        fish_completion.install "completions/bert.fish" => "bert"
        zsh_completion.install "completions/_bert" => "_bert"
      end
    end
    on_arm do
      url "https://github.com/sha1n/bert/releases/download/v2.4.1/bert_2.4.1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c2f5fe4e752702aa1a1afd4dcc5654d275333f09183fa86424329a8b5cad4d6d"

      def install
        bin.install "bert"
        bash_completion.install "completions/bert.bash" => "bert"
        fish_completion.install "completions/bert.fish" => "bert"
        zsh_completion.install "completions/_bert" => "_bert"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sha1n/bert/releases/download/v2.4.1/bert_2.4.1_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "cd3d4d36094ae0089a2b89fce247186f8bf408f7b58d09d09147d191a8eca404"

        def install
          bin.install "bert"
          bash_completion.install "completions/bert.bash" => "bert"
          fish_completion.install "completions/bert.fish" => "bert"
          zsh_completion.install "completions/_bert" => "_bert"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/sha1n/bert/releases/download/v2.4.1/bert_2.4.1_linux_armv6.tar.gz", using: CurlDownloadStrategy
        sha256 "336bd90b77b0984d691648eee34c41dd830a46669a932dfc044567effb45c8bf"

        def install
          bin.install "bert"
          bash_completion.install "completions/bert.bash" => "bert"
          fish_completion.install "completions/bert.fish" => "bert"
          zsh_completion.install "completions/_bert" => "_bert"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sha1n/bert/releases/download/v2.4.1/bert_2.4.1_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "ca4a68b9993384fcef763799ff0dfebb28efad9129059c619aeef87637221c61"

        def install
          bin.install "bert"
          bash_completion.install "completions/bert.bash" => "bert"
          fish_completion.install "completions/bert.fish" => "bert"
          zsh_completion.install "completions/_bert" => "_bert"
        end
      end
    end
  end

  test do
    system "#{bin}/bert --version"
  end
end
