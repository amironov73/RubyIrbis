module RubyIrbis

  # Подполе с кодом и значением
  class SubField

    # @param [String] code Код подполя
    # @param [Sbject] value Значение подполя
    def initialize(code, value)
      @code = code
      @value = value
    end

  end

  # Поле с меткой, значением и подполями
  class RecordField

    # @param [Integer] tag Метка поля
    # @param [String] value Значение поля до первого разделителя
    def initialize(tag, value = '')
      self.tag = tag
      self.value = value
      self.subfields = []
    end

  end

  # Запись с полями
  class MarcRecord
    @database = ''
    @mfn = 0
    @version = 0
    @status = 0
    @fields = []

  end

  # Клиентский запрос
  class ClientQuery

  end

  # Ответ сервера
  class ServerResponse

  end

  # Подключение к ИРБИС-серверу
  class IrbisConnection
    @host = '127.0.0.1'
    @port = 6666
    @username = ''
    @password = ''
    @database = 'IBIS'
    @workstation = 'C'
    @client_id = 0
    @query_id = 0
    @server_version = ''
    @ini_file = nil
    @interval = 0
    @connected = false

    # Подключение к серверу ИРБИС64.
    def connect

    end

    # Отключение от сервера.
    def disconnect

    end

  end

end
