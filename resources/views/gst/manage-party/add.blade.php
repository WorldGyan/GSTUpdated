@extends('samples_for_gst') 
@section('content')

<section class="content" style="margin-left: 100px;margin-right: 100px;">
   {{ Form::open(['url' => 'gst/manage-party/add','files' => 'true' ,'enctype' => 'multipart/form-data', 'autocomplete' => 'OFF']) }} 
   {{ csrf_field() }}
   {{ Form::hidden('id', isset($id) ? $id :'', []) }} 
    <div class="row">
      <!-- left column -->
      <div class="col-md-12 col-sm-12">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border text-center">
            <h4 class="box-title text-primary ">Please Fill up Party details</h4>
          </div>
          <!-- /.box-header -->
          <!-- form start -->
          <div class="box-body">
            @if ($errors->any())
            <ul class="alert alert-danger" style="list-style:none">
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
            </ul>
            @endif
            @if(session()->has('message.level'))
            <div class="alert alert-{{ session('message.level') }} alert-dismissible" onload="javascript: Notify('You`ve got mail.', 'top-right', '5000', 'info', 'fa-envelope', true); return false;">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
              <h4><i class="icon fa fa-check"></i> {{ ucfirst(session('message.level')) }}!</h4>
              {!! session('message.content') !!}
            </div>
            @endif
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-6">
        <div class="form-group">
          <label class="form-col-form-label" for="party_name">Party Name</label>
          {{Form::text('party_name', isset($party_name)?$party_name: '', ['class' => 'form-control form-control is-valid','id'=>'party_name','required', 'placeholder' => ' Party Name']  )}}
          <div class="invalid-feedback">
          {{ $errors->has('party_name') ? $errors->first('party_name', ':message') : '' }}
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-grou">
          <label class="form-col-form-label" for="mob_num">Contact No</label>
          {{Form::number('mob_num',isset($mob_num)?$mob_num: '', ['class' => 'form-control form-control is-valid', 'placeholder' => 'Contact No'] )}}
          <div class="invalid-feedback">
            {{ $errors->has('mob_num') ? $errors->first('mob_num', ':message') : '' }}
          </div>
        </div>
      </div> 
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="form-group">
        <label class="form-col-form-label" for="address">Address</label>
        {{Form::textarea('address', isset($address)?$address: '', ['class' => 'form-control  form-control is-valid','id'=>'address', 'placeholder' => ' Address','style' => 'height:50px']  )}}
        <div class="invalid-feedback">
        {{ $errors->has('address') ? $errors->first('address', ':message') : '' }}
        </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-grou">
          <label class="form-col-form-label" for="email">Email</label>
          {{Form::email('email',isset($email)?$email: '', ['class' => 'form-control form-control is-valid', 'placeholder' => 'Email'] )}}
          <div class="invalid-feedback">
          {{ $errors->has('email') ? $errors->first('email', ':message') : '' }}
          </div>
        </div>
      </div> 
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="form-group">
          <label class="form-col-form-label" for="gstin">GSTIN</label>
          {{Form::text('gstin', isset($gstin)?$gstin: '', ['class' => 'form-control form-control is-valid','id'=>'address', 'placeholder' => ' GSTIN']  )}}
          <div class="invalid-feedback">
          {{ $errors->has('gstin') ? $errors->first('gstin', ':message') : '' }}
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label class="form-col-form-label" for="nature_of_busines">Nature of Business</label>
          {{Form::text('nature_of_busines', isset($nature_of_busines)?$nature_of_busines: '', ['class' => 'form-control form-control is-valid','id'=>'address', 'placeholder' => '-- Nature of Business']  )}}
          <div class="invalid-feedback">
            {{ $errors->has('nature_of_busines') ? $errors->first('nature_of_busines', ':message') : '' }}
          </div>
        </div>
      </div>
    </div> 
    <div class="row">
      <div class="col-md-12 text-center">
        <button type="submit" class="btn btn-sm btn-primary" name=""> <i class="fa fa-dot-circle-o"></i>{{isset($id) ? 'Update' :'Add' }}</button> 
        <button type="reset" class="btn btn-sm btn-danger" name=""> <i class="fa fa-ban"></i> Reset</button> 
      </div>
    </div>
                  
   {{Form::close()}}
</section>
@endsection
@section('extra-javascript')
<script type="text/javascript">
  $(document).ready(function(){
    // $('input').on("change,keyup,keypress",function(){
      
    // })
  });
</script>
@endsection