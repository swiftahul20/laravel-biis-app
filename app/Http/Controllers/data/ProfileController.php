<?php

namespace App\Http\Controllers\data;

use App\Http\Controllers\Controller;
use App\Models\Profile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $query = $request->input('search');

        $profiles = DB::table('profiles')
            ->where('first_name', 'like', '%' . $query . '%')
            ->paginate();

        return view('layout.officer.officer-list', compact('profiles'));

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }

    public function getProfileList()
    {
        $profiles = Profile::paginate();
        return view('layout.officer.officer-list', compact('profiles'));
    }

    public function sortByTable(Request $request)
    {
        $profiles = new Profile();

        $column = $request->input('column', 'first_name');
        $order = $request->input('order', 'asc');

        $profiles = $profiles->orderBy($column, $order)->paginate();

        return view('layout.officer.officer-list', compact('profiles'));
    }
}
