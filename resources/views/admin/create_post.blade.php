
@extends('admin.template.admin_master')

@section('content')
    <!-- page content -->
<div class="right_col" role="main">
    <div class="row">
            {{-- <div class="col-md-2"></div> --}}
            <div class="col-md-12" style="margin-top:50px;">
                <div class="x_panel">

                    <div class="x_title">
                        <h2>Create Post</h2>
                        <div class="clearfix"></div>
                    </div>
                <div>
                     @if (Session::has('message'))
                        <div class="alert alert-success" >{{ Session::get('message') }}</div>
                     @endif
                     @if (Session::has('error'))
                        <div class="alert alert-danger">{{ Session::get('error') }}</div>
                     @endif

                </div>
                    <div>
                        <div class="x_content">
                        {{-- {{ Form::open(['method' => 'post','route'=>'admin.mem_add_generate_epin']) }} --}}
                            <div class="well" style="overflow: auto">
                                <div class="form-row mb-10">
                                    <div class="col-md-6 col-sm-12 col-xs-12 mb-3">
                                        <label for="category">Title</label>
                                        <input type="text" class="form-control" value="" name="title" placeholder="Enter Title">
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12 mb-3">
                                        <label for="category">Author</label>
                                        <input type="text" class="form-control" value="" name="author" placeholder="Author">
                                    </div>                
                                    <div class="col-md-6 col-sm-12 col-xs-12 mb-3">
                                        <label for="category">Category</label>
                                        <select class="form-control" name="category" id="category">
                                            <option selected="" disabled="">Select Category</option>
                                            <option value="3">উত্তৰ পূৰ্বাঞ্চলৰ কেন্দ্ৰবিন্দু</option>
                                            <option value="5">অন্বেষণ</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6 col-sm-12 col-xs-12 mb-3">
                                        <label for="category">Image Upload</label>
                                        <input type="file" class="form-control" name="file" accept="/*">
                                    </div>
                                </div>
                            </div>
                            <div class="well" style="overflow: auto">
                                <div class="form-row mb-10">
                                    <div class="col-md-12 col-sm-12 col-xs-12 mb-3">
                                        <label for="category">Short Description</label>
                                        <textarea class="form-control" name="short_desc" placeholder="Short Description"></textarea>
                                    </div>                                 
                                </div>
                            </div>
                            <div class="well" style="overflow: auto">
                                <div class="form-row mb-10">
                                    <div class="col-md-12 col-sm-12 col-xs-12 mb-3">
                                        <label for="category">Body</label>
                                        <textarea class="form-control" name="body" placeholder="Enter full description"></textarea>
                                    </div>                                 
                                </div>
                            </div>
                                <div class="form-group">    	            	
                                    {{ Form::submit('Publish', array('class'=>'btn btn-success pull-right')) }}  
                                </div>
                                {{ Form::close() }}
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>
@endsection


