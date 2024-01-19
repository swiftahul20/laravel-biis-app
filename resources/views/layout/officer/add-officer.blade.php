@extends('main')
@section('title', 'Add Officer')

@section('container')
    <div class="p-4 h-content border-2 border-gray-200 border-line rounded-lg dark:border-gray-700">
        <div class="flex flex-col gap-2">
            <div class="text-3xl mb-2">
                Tambah Pegawai
            </div>
            <form id="officerForm" method="GET" action="">
                <div class="grid grid-cols-2 gap-4">
                    <div class="relative z-0 w-full mb-5 group">
                        <input type="text" name="first_name" id="first_name"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " required />
                        <label for="first_name"
                            class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                            Nama Depan </label>
                    </div>
                    <div class="relative z-0 w-full mb-5 group">
                        <input type="text" name="last_name" id="last_name"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " required />
                        <label for="last_name"
                            class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                            Nama Belakang </label>
                    </div>
                    <div class="relative z-0 w-full mb-5 group">
                        <input type="email" name="email" id="email"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " required />
                        <label for="email"
                            class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 rtl:peer-focus:left-auto peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                            Alamat Email </label>
                    </div>
                    <div class="relative z-0 w-full mb-5 group">
                        <input type="text" name="dob" id="dob"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " required />
                        <label for="dob"
                            class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 rtl:peer-focus:left-auto peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                            Tanggal Lahir </label>
                    </div>
                    <div class="relative z-0 w-full mb-5 group">
                        <input type="email" name="position" id="position"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " />
                        <label for="position"
                            class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 rtl:peer-focus:left-auto peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                            Jabatan </label>
                    </div>

                </div>
                <div class="flex flex-row gap-4 w-1/4">
                    <button type="submit" class="bg-blue-700 rounded-lg w-1/2 text-white hover:bg-blue-800"> Submit
                    </button>
                    <button type="reset" class="bg-yellow-300 rounded-lg w-1/2  text-black hover:bg-yellow-400"> Reset
                    </button>
                    {{-- <button type="submit"
                        class="w-2 text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Submit</button> --}}
                </div>
            </form>
        </div>
    </div>
@endsection
@section('scripts')
    <style>
        label.error {
            color: red;
            display: block;
            margin-top: 5px;
            font-size: smaller;
        }
    </style>
    <script>
        $(document).ready(function() {
            $("#officerForm").validate({
                rules: {
                    first_name: {
                        required: true,
                    },
                    last_name: {
                        required: true,
                    },
                    email: {
                        required: true,
                        email: true
                    },
                    dob: {
                        required: true
                    }
                },
                messages: {
                    first_name: "* Nama depan harus diisi!",
                    last_name: "* Nama belakang harus diisi!",
                    email: "* Alamat email harus diisi!",
                    dob: "* Tanggal lahir harus diisi!"
                },
                errorPlacement: function(error, element) {
                    error.insertAfter(element)
                },
                submitHandler: function(form) {
                    let x = document.querySelector('form.form').elements;
                    console.log('Nama depan: ', x[first_name].value);
                }
            });

            $(function() {
                $('input[name="dob"]').daterangepicker({
                    singleDatePicker: true,
                    showDropdowns: true,
                    minYear: 1970,
                }, function(start, end, label) {
                    console.log("A new date selection was made: " + start.format('YYYY-MM-DD') +
                        ' to ' + end.format('YYYY-MM-DD'));
                });
            });
        });
    </script>
@endsection
