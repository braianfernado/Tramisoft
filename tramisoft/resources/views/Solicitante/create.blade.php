
@extends('layouts.solicitante')

@section('title' , 'Registro solicitante')
@section('content')  <!-- Section y endsection son directivas para poner info del body de la pagina-->


 <form method="POST" action="/solicitante">
 	@csrf <!-- Directriz para proteger los formularios de falsificacion de registros-->
  <div class="form-row" >
     <div class="form-group col-md-6">
     <label for="tipoPersona">Tipo persona</label>
        <select class="form-control">
                @foreach($tipopersona as $per)
                <option>{{$per->nombre}}</option>
                @endforeach
            </select>
      </div>


    <div class="form-group col-md-6">
      <label for="identificacion">Tipo de dentificacion</label>
     <select class="form-control">
                @foreach($identificacion as $id)
                <option>{{$id->tipoIdentificacion}}</option>
                @endforeach
      </select> <!-- identificacion es el nombre del select-->
    </div>

     <div class="form-group col-md-6">
      <label for="numero">Numero</label>
    <input type="text" class="form-control" id="numero" placeholder="Ingrese el numero" name="numero">
    </div>
    
     <div class="form-group col-md-6">
     <label for="genero">Genero</label>
       <select class="form-control">
                @foreach($genero as $gen)
                <option>{{$gen->tipoGenero}}</option>
                @endforeach
      </select> <!-- identificacion es el nombre del select--> <!-- genero es el nombre del select-->
    </div>

      
   <div class="form-group col-md-6 ">
    <label for="nombre">Nombre</label>
   <input type="text" class="form-control" id="nombre" placeholder="nombre" name="nombre">
  </div>

   
 
  <div class="form-group col-md-6">
    <label for="apellido">Apellido</label>
   <input type="text" class="form-control" id="apellido" placeholder="apellido" name="apellido">
  </div>
  
  <div class="form-group col-md-6">
    <label for="celular">Celular</label>
   <input type="text" class="form-control" id="celular" placeholder="Nº de celular">
  </div>
 {{--  <div class="form-group col-md-6">
    <label for="telefono">Telefono</label>
   <input type="text" class="form-control" id="telefono" placeholder="telefono" name="telefono">
  </div> --}}
  
  <div class="form-group col-md-6">
    <label for="correo">Correo</label>
    <input type="email" class="form-control" name="correo" id="Correo" placeholder="Correo">
  </div>
  
    <div class="form-group col-md-6">
     <label for="nacionalidad">Nacionalidad</label>
     
            <select class="form-control" name="nacionalidades" id="Naci" >
                @foreach($Nacionalidades as $na)
                <option value="{{$na->id}}">{{$na->nombre}}</option>
                @endforeach
                
            </select>
          <!-- nacionalidad es el nombre del select-->
    </div>



    <div class="form-group col-md-6">
     <label for="nacionalidad">Departamento</label>
     
            <select class="form-control" name="departamento" id="Departamento" >
              <option value="o" disabled="true" selected="true">Selecione un departamento</option>  
                
            </select>
          <!-- nacionalidad es el nombre del select-->
    </div>


    <div class="form-group col-md-6">
     <label for="ciudad">Ciudad</label>
      {!! Form::select('ciudad') !!} <!-- ciudad es el nombre del select-->
    </div>

    {{-- <div class="form-group col-md-6">
     <label for="comuna">Comuna</label>
      <select class="form-control">
                @foreach($comunas as $com)
                <option>{{$com->nombre}}</option>
                @endforeach
            </select>
    </div>

     <div class="form-group col-md-6">
     <label for="barrio">Barrio</label>
      {!! Form::select('barrio') !!} <!-- barrio es el nombre del select-->
    </div>

     <div class="form-group col-md-6">
     <label for="vivienda">Vivienda</label>
      <select class="form-control">
                @foreach($viviendas as $vi)
                <option>{{$vi->nombre}}</option>
                @endforeach
      </select>
    </div> --}}

   

    {{-- <div class="form-group col-md-6">
     <label for="estrato">Estrato </label>
     <select class="form-control">
                @foreach($estratos as $est)
                <option>{{$est->nivel}}</option>
                @endforeach
     </select>
    </div>
    <div class="form-group col-md-6">
     <label for="estadoCivil">Estado civil</label>
     <select class="form-control">
                @foreach($estadoCivil as $civi)
                <option>{{$civi->nombre}}</option>
                @endforeach
     </select>
    </div>
    <div class="form-group col-md-6">
     <label for="ocupacion">Ocupacion</label>
      <select class="form-control">
                @foreach($ocupacion as $ocu)
                <option>{{$ocu->nombre}}</option>
                @endforeach
     </select> <!-- ocupacion es el nombre del select-->
    </div>
    <div class="form-group col-md-6">
     <label for="eps">Eps</label>
     select class="form-control">
                @foreach($eps as $ep)
                <option>{{$ep->nombre}}</option>
                @endforeach
     </select>
    </div> --}}
  
  <button type="submit" class="btn btn-primary">Enviar</button>
</div>
</form>
 	
 
 


@endsection
