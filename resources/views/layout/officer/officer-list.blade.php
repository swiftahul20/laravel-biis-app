@extends('main')
@section('title', 'Officer List')

@section('container')
    <div class="p-4 h-content border-2 border-gray-200 border-line rounded-lg dark:border-gray-700">
        <div class="flex flex-col gap-4">
            <div class="grid grid-cols-3">
                <div class="text-3xl">
                    Daftar Pegawai
                </div>
                <div></div>
                <div>
                    <form action="/officer-list-filter">
                        <label for="default-search"
                            class="mb-2 text-sm font-medium text-gray-900 sr-only dark:text-white">Search</label>
                        <div class="relative">
                            <div class="absolute inset-y-0 start-0 flex items-center ps-3 pointer-events-none">
                                <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true"
                                    xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z" />
                                </svg>
                            </div>
                            <input type="search" id="search" name="search"
                                class="block w-full p-4 ps-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                placeholder="Cari nama pegawai.." required>
                            <button type="submit"
                                class="text-white absolute end-2.5 bottom-2.5 bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Search</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
                <table id="tableProfile" class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                    <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                        <tr>
                            <th scope="col" class="px-6 py-3">
                                <a href="{{ route('order-asc', ['column' => 'first_name', 'order' => 'asc']) }}">
                                <button class="bg-red"> Asc </button>
                                </a>
                                    Nama Pegawai
                                    <a href="{{ route('order-desc', ['column' => 'first_name', 'order' => 'desc']) }}">
                                        <button class="">
                                            Desc
                                        </button>
                                    </a>
                            </th>
                            <th scope="col" class="px-6 py-3">
                                Email
                            </th>
                            <th scope="col" class="px-6 py-3">
                                Tanggal Lahir
                            </th>
                            <th scope="col" class="px-6 py-3">
                                Jabatan
                            </th>
                        </tr>
                    </thead>
                    @foreach ($profiles as $profile)
                        <tbody>
                            <tr
                                class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                                <th scope="row"
                                    class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                    {{ $profile->first_name }} {{ $profile->last_name }}
                                </th>
                                <td class="px-6 py-4">
                                    {{ $profile->email }}
                                </td>
                                <td class="px-6 py-4">
                                    {{ $profile->date_of_birth }}
                                </td>
                                <td class="px-6 py-4">
                                    -
                                </td>
                            </tr>
                        </tbody>
                    @endforeach
                </table>
                <div class="my-2 px-4">
                    {{ $profiles->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection
@section('scripts')
    <script></script>
@endsection
