# frozen_string_literal: true

require 'net/http'

module Interage
  class ApplicationRequest
    def all(params = {})
      response = get(path: base_path, params: params)

      response[plural_key_name].map { |attribute| klass.new(attribute) }
    end

    def find(id)
      response = get(path: member_path(id))

      klass.new(response[key_name])
    end

    def create(body)
      post(base_path, body)
    end

    def update(id)
      put(member_path(id), body)
    end

    def destroy(id)
      delete(path: member_path(id))
    end

    protected

    def base_path
    end

    def member_path(id)
      "#{base_path}/#{id}"
    end

    def base_url(path: nil, params: {})
      "#{api_base_url}#{path}?#{params.to_query}"
    end

    def key_name
      klass.model_name.to_s.underscore.to_sym
    end

    def get(path: nil, params: {})
      response = start_request(Net::HTTP::Get, path, params)

      JSON.parse(response.body, symbolize_names: true)
    end

    def post(path, body)
      start_request(Net::HTTP::Post, path, body)
    end

    def put(path, body)
      start_request(Net::HTTP::Put, path, body)
    end

    def delete(path)
      start_request(Net::HTTP::Delete, path)
    end

    def start_request(klass, path, body = {})
      uri = URI(base_url(path: path))
      request = klass.new(uri)
      request.body = body.to_json
      request.content_type = 'application/json'
      headers.map { |key, value| request[key] = value }

      Net::HTTP.start(uri.hostname, uri.port) do |http|
        http.request(request)
      end
    end

    def headers
      {}
    end

    def plural_key_name
      key_name.to_s.pluralize.to_sym
    end
  end
end
