<?php

namespace App\Controllers;

use App\Models\KomikModel;
use CodeIgniter\Exceptions\PageNotFoundException;

class Komik extends BaseController
{
    protected $komikModel;

    public function __construct()
    {
        $this->komikModel = new KomikModel();
    }

    public function index()
    {
        $data = [
            'title' => 'Komik',
            'komik' => $this->komikModel->getKomik(),
        ];
        return view('komik/index', $data);
    }

    public function detail($slug)
    {
        $data = [
            'title' => 'Detail Komik',
            'komik' => $this->komikModel->getKomik($slug),
        ];

        if (empty($data['komik'])) {
            throw PageNotFoundException::forPageNotFound('Data komik ' . $slug . ' tidak ditemukan');
        }

        return view('komik/detail', $data);
    }

    public function create()
    {
        $data = [
            'title' => 'Tambah Data Komik',
            'validation' => \Config\Services::validation(),
        ];
        return view('komik/create', $data);
    }

    public function save()
    {
        if (!$this->validate([
            'judul' => [
                'rules' => 'required|is_unique[komik.judul]',
                'errors' => [
                    'required' => '{field} harus diisi',
                    'is_unique' => '{field} sudah terdaftar',
                ]
            ],
            'penulis' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi',
                ]
            ],
            'sinopsis' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi',
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,5048]|mime_in[sampul,image/jpeg,image/jpg,image/png]|is_image[sampul]',
                'errors' => [
                    'max_size' => 'ukuran {field} terlalu besar',
                    'mime_in' => '{field} bukan gambar',
                    'is_image' => '{field} bukan gambar',
                ]
            ],
        ])) {
            return redirect()->to('/komik/create')->withInput();
        }
        $sampul = $this->request->getFile('sampul');
        if ($sampul->getError() == 4) {
            $namaSampul = 'default.png';
        } else {
            $namaSampul = $sampul->getRandomName();
            $sampul->move('img', $namaSampul);
        }
        $this->komikModel->save([
            'sampul' => $namaSampul,
            'judul' => $this->request->getVar('judul'),
            'slug' => url_title($this->request->getVar('judul'), '-', true),
            'penulis' => $this->request->getVar('penulis'),
            'sinopsis' => $this->request->getVar('sinopsis'),
        ]);
        session()->setFlashdata('message', 'Data komik berhasil tersimpan');
        return redirect()->to('/komik');
    }

    public function edit($slug)
    {
        $data = [
            'title' => 'Edit Data Komik',
            'validation' => \Config\Services::validation(),
            'komik' => $this->komikModel->getKomik($slug),
        ];
        return view('komik/edit', $data);
    }

    public function update($id)
    {
        $cekJudul = $this->komikModel->getKomik($this->request->getVar('slug'));
        if ($cekJudul['judul'] == $this->request->getVar('judul')) {
            $ruleJudul = 'required';
        } else {
            $ruleJudul = 'required|is_unique[komik.judul]';
        }

        if (!$this->validate([
            'judul' => [
                'rules' => $ruleJudul,
                'errors' => [
                    'required' => '{field} harus diisi',
                    'is_unique' => '{field} sudah terdaftar',
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,5048]|mime_in[sampul,image/jpeg,image/jpg,image/png]|is_image[sampul]',
                'errors' => [
                    'max_size' => 'ukuran {field} terlalu besar',
                    'mime_in' => '{field} bukan gambar',
                    'is_image' => '{field} bukan gambar',
                ]
            ],
        ])) {
            $validation = \Config\Services::validation();
            return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput()->with('validation', $validation);
        }

        $fileSampul = $this->request->getFile('sampul');
        if ($fileSampul->getError() == 4) {
            $namaSampul = $this->request->getVar('sampulLama');
        } else {
            $namaSampul = $fileSampul->getRandomName();
            $fileSampul->move('img', $namaSampul);
            unlink('img/' . $this->request->getVar('sampulLama'));
        }

        $this->komikModel->save([
            'id' => $id,
            'sampul' => $namaSampul,
            'judul' => $this->request->getVar('judul'),
            'slug' => url_title($this->request->getVar('judul'), '-', true),
            'penulis' => $this->request->getVar('penulis'),
            'sinopsis' => $this->request->getVar('sinopsis'),
        ]);
        session()->setFlashdata('message', 'Data komik berhasil terupdate');
        return redirect()->to('/komik');
    }

    public function delete($id)
    {
        $komik = $this->komikModel->find($id);
        if ($komik['sampul'] != 'default.png') {
            unlink('img/' . $komik['sampul']);
        }
        $this->komikModel->delete($id);
        session()->setFlashdata('message', 'Data komik berhasil terhapus');
        return redirect()->to('/komik');
    }
}
