@extends('samples_for_gst') 
@section('content')

<section class="content" style="margin-left: 20px;margin-right: 20px;">
   <div class="row">
      <!-- left column -->
      <div class="col-md-12 col-sm-12">
        <!-- general form elements -->
        <div class="box box-primary">
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
    <div class="col-sm-12">
        <div class="card">
          <div class="card-header">
            <i class="fa fa-align-justify"></i> Trashed Party
          </div>
          <div class="card-body table-responsive" style="font-size: 13px;padding-left:10px;vertical-align:middle;">
            <table class="table  table-hover  table-bordered" style="font-size: 13px;display:table-cell;width:100%;" >
              <thead class="thead-dark">
                <tr>
                  <th width="10%" >Party Id</th>
                  <th width="10%" >Party Name</th>
                  <th width="20%" >Mobile Number</th>
                  <th width="10%" >Address</th>
                  <th width="10%" >GSTIN</th>
                  <th width="10%" >Email</th>
                  <th width="40%" >Email Varified</th>
                  <th width="40%" >Nature Of business</th>
                  <th width="20%">Created Date</th> 
                  <th width="20%">Updated date</th> 
                  <th width="30%">Action</th>    
                </tr>
              </thead>
              <tbody>
                @foreach($TrashedParty as $key => $value)
                <tr>
                  <td>{{ $value['id'] }}</td>
                  <td>{{ $value['party_name'] }}</td>
                  <td>{{ $value['mob_num'] }}</td>
                  <td>{{ $value['address'] }}</td>
                  <td>{{ $value['gstin'] }}</td>
                  <td>{{ $value['email'] }}</td>
                  <td>{{ $value['email_verified_at'] }}</td>
                  <td>{{ $value['nature_of_busines'] }}</td>
                  <td>{{ $value['created_at'] }}</td>
                  <td>{{ $value['updated_at'] }}</td>
                  <td>
                   <!-- <a href="{{ url('/')}}/gst/manage-party/add/{{ $value['id'] }}" class="btn btn-success btn-xs"><i class="fa fa-edit"></i></a>  -->
                      <a href="{{ url('/')}}/gst/manage-party/delete/{{ $value['id']}} " class="btn btn-danger btn-xs" onclick="return confirm('Are you sure you want to delete this user?');"><i class="fa fa-trash"></i></a>
                  </td>
                </tr>  
                @endforeach
              </tbody>
            </table>
            <div class="col-lg-12 text-center">
              {{ $TrashedParty->links() }}
            </div>
          </div>
        </div>
    </div>
    
  </div>
                  
  <div class="row">
   
  </div>
</section>
@endsection
@section('extra-javascript')
<script type="text/javascript">
  
</script>
@endsection