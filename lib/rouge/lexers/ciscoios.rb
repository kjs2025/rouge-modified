# -*- coding: utf-8 -*- #
# frozen_string_literal: true

module Rouge
  module Lexers
    class CiscoIOS < Lexer
      title "Cisco IOS"
      desc "A lexer for Cisco IOS configuration files"

      tag 'cios'
      aliases 'cios', 'cisco', 'ciscoios'
      filenames '*.conf', '*.cfg', '*.ios'
      mimetypes 'text/x-cisco-ios'

      attr_reader :token
      def initialize(*)
        super

        @token = token_option(:token) || Text
      end

      def stream_tokens(string, &b)
        yield self.token, string
      end
    end
  end
end