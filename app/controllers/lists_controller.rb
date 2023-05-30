class ListsController < ApplicationController
  # Primer Paso
  def index
    @lists = List.all # Array de listas
  end

  # Segundo paso
  def show
    @list = List.find(params[:id]) # El usuario ingresará un id y mostrará dicha lista.
  end

  # Tercer paso
  def new
    @list = List.new # Lo mismo que manual, pero ahora los datos los recibirá en un formulario.
  end

  # Cuarto paso
  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to list_path(@list) # Redireccionar al show (/lists/:id) si es que se guarda.
    else
      render :new, status: :unprocessable_entity # No se pudo procesar por un error de validación.
    end
  end

  private

  def list_params # Permite inputs del formulario
    params.require(:list).permit(:name)
  end
end
