<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\PartyManage;

class ManagePartyController extends Controller
{

   public function __construct()
    {
        $this->middleware('auth');
    }
    public function save(Request $request, $id = null)
    {
        $viewData['pageTitle'] = 'Add Party'; 
        // This if condition for fill detail for update otherwise for save and update 
       	if(isset($id) && $id != null ){
    		$getFormAutoFillup = PartyManage::whereId($id)->first()->toArray();
    		return view('gst.manage-party.add', $viewData)->with($getFormAutoFillup);
    	}
    	else if((!isset($id) && $id == null) && !$request->isMethod('post') )
    	{
    		return view('gst.manage-party.add', $viewData);
    	}
    	else {
    		 // This if condition for fill detail for  update otherwise for  save 
	    	if ($request->isMethod('post')){
	    		$getFormAutoFillup = array();	    		
	    		if(isset($request->id) && $request->id != null)
	    		{
	    			if ($request->isMethod('post')){
			    		$PartyManage=	 request()->except(['_token']);
						if(PartyManage::where([['id', '=', $request->id]])->update($PartyManage)){
							$request->session()->flash('message.level', 'success');
					     	$request->session()->flash('message.content', 'Party updated Successfully!');
						}
				    }
				     return redirect('/gst/manage-party/add/'.$request->id);
	    		}
	    		else
	    		{
			     	$PartyManage=	$request->all();
					$PartyManage = new PartyManage($PartyManage);
					
					if($PartyManage->save()){
						$request->session()->flash('message.level', 'success');
				     	$request->session()->flash('message.content', 'Party Saved Successfully!');
					}
					return view('gst.manage-party.add', $viewData);
	    		}
			}
		}
    }
   // this is for search
    public function view()
    {
        $viewData['pageTitle'] = 'Add Party';       	
		$viewData['PartyManage'] = PartyManage::paginate(10);
        return view('gst.manage-party.search', $viewData);
    }
    public function trash(Request $request,$id)
    {
    	 if(($id!=null) && (PartyManage::where('id',$id)->delete())){
            $request->session()->flash('message.level', 'warning');
            $request->session()->flash('message.content', 'Party was Trashed!');
            $viewData['pageTitle'] = 'Add Party';       	
			$viewData['PartyManage'] = PartyManage::paginate(10);
			return view('gst.manage-party.search', $viewData);
        }else{
            session()->flash('status', ['danger', 'Operation was Failed!']);
			$viewData['pageTitle'] = 'Add Party';       	
			$viewData['PartyManage'] = PartyManage::paginate(10);
			return view('gst.manage-party.search', $viewData);
       }
    
    }
    public function trashedList()
    {

         $TrashedParty = PartyManage::orderBy('deleted_at', 'desc')->onlyTrashed()->simplePaginate(10);
         return view('gst.manage-party.delete', compact('TrashedParty', 'TrashedParty'));
      
    }
    public function permanemetDelete(Request $request,$id)
    {
    	if(($id!=null) && (PartyManage::where('id',$id)->forceDelete())){
            $request->session()->flash('message.level', 'warning');
            $request->session()->flash('message.content', "Party was deleted Permanently and cCan't rollback in Future!"); 
        }else{
            session()->flash('status', ['danger', 'Operation was Failed!']);
       }

    	 $TrashedParty = PartyManage::orderBy('deleted_at', 'desc')->onlyTrashed()->simplePaginate(10);
         return view('gst.manage-party.delete', compact('TrashedParty', 'TrashedParty'));
    }
}
