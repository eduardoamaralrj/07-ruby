class Tarefa
  attr_accessor :descricao, :concluida

  def initialize(descricao)
    @descricao = descricao
    @concluida = false
  end

  def marcar_como_concluida
    @concluida = true
  end

  def to_s
    status = @concluida ? "[Concluída]" : "[Pendente]"
    "#{status} #{@descricao}"
  end
end

class ListaDeTarefas
  def initialize
    @tarefas = []
  end

  def adicionar_tarefa(tarefa)
    @tarefas << tarefa
  end

  def listar_tarefas
    if @tarefas.empty?
      puts "Nenhuma tarefa adicionada."
    else
      @tarefas.each_with_index do |tarefa, index|
        puts
