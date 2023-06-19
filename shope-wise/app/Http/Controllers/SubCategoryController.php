<?php

namespace App\Http\Controllers;

use App\Models\SubCategory;
use Illuminate\Http\Request;

class SubCategoryController extends Controller
{
    public function index()
    {
        return view('admin.sub-category.index');
    }
    public function create(Request $request)
    {
        SubCategory::newSubCategory($request);
        return back()->with('message', 'Sub Category Info Create Successful');
    }
    public function manage()
    {
        return view('admin.sub-category.manage', [
            'subCategories' => SubCategory::where('status', 1)->get(),
        ]);
    }
    public function edit($id)
    {
        return view('admin.sub-category.edit', [
            'subCategory' => SubCategory::find($id),
        ]);
    }
    public function update(Request $request, $id)
    {
        SubCategory::updateSubCategory($request, $id);
        return redirect('/sub-category/manage')->with('message', 'Sub Category Info Update Successful');
    }
    public function delete($id)
    {
        SubCategory::deleteSubCategory($id);
        return back()->with('message', 'Sub Category Delete Info Successful');
    }
}
