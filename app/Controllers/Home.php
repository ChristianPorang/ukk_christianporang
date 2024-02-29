<?php

namespace App\Controllers;
use App\Models\M_login;
use App\Models\M_model;


class Home extends BaseController
{
    protected function isLoggedIn()
    {
         return session()->has('id');
     }
    public function index()
    {
        if ($this->isLoggedIn()) {
            return redirect()->to('dashboard');
        }
  
        echo view('login/view');

    }

    public function aksi_login()
    {
        $u=$this->request->getPost('username');
        $p=$this->request->getPost('password');

       
        if (empty($u) && empty($p)) {
            session()->setFlashdata('error', 'Username and password cannot be empty'); // Wajib Di Isi Username Dan Passwordnya //
            return redirect()->to('/Home');
        }

        if (empty($u)) {
            session()->setFlashdata('error', 'Username cannot be empty'); //Wajib Di Isi Usernamenya Agar Tidak Kosong//
            return redirect()->to('/Home');
        }

        if (empty($p)) {
            session()->setFlashdata('error', 'Password cannot be empty'); //Wajib Di Isi Passwordnya Agar Tidak Kosong//
            return redirect()->to('/Home');
        }

        $model= new M_login();
        $data=array(
            'username'=>$u,
            'password'=>$p

        );
        $cek=$model->getLoginWithPassword('user', $u, $p);
        if ($cek !== null) {
            session()->set('id', $cek['id_user']);
            session()->set('username', $cek['username']);
            return redirect()->to('dashboard');
        }else {
         
            session()->setFlashdata('error', 'Your username or password is incorrect');
            return redirect()->to('/Home');
        }
    }

    public function log_out()
    {
        session()->destroy();
        return redirect()->to('/Home');
    }
    public function register()
    {
        
		echo view('login/register');
       
	
    }
    public function aksi_register()
{
    $a = $this->request->getPost('username');
    $b = $this->request->getPost('password');
    $c = $this->request->getPost('nama');
    
  
    $imageName = 'default.jpg';

    $simpan = array(
        'username' => $a,
        'password' =>md5($b),
        'nama' => $c,
        'foto' => $imageName
    );

    $model = new M_model();
    $model->simpan('user', $simpan);

    return redirect()->to('/Home');
}
}
