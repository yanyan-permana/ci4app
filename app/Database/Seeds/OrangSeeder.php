<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use CodeIgniter\I18n\Time;

class OrangSeeder extends Seeder
{
    public function run()
    {
        // $data = [
        //     [
        //         'nama' => 'Sandika Galih',
        //         'alamat' => 'Bandung',
        //         'created_at' => Time::now('Asia/Jakarta', 'id_ID'),
        //         'updated_at' => Time::now('Asia/Jakarta', 'id_ID'),
        //     ],
        //     [
        //         'nama' => 'Yanyan Permana',
        //         'alamat' => 'Puri Cipageran 1',
        //         'created_at' => Time::now('Asia/Jakarta', 'id_ID'),
        //         'updated_at' => Time::now('Asia/Jakarta', 'id_ID'),
        //     ],
        // ];

        for ($i = 1; $i <= 100; $i++) {
            $data = [
                'nama' => static::faker()->name,
                'alamat' => static::faker()->address,
                'created_at' => Time::now('Asia/Jakarta', 'id_ID'),
                'updated_at' => Time::now('Asia/Jakarta', 'id_ID'),
            ];
            $this->db->table('orang')->insert($data);
        }

        // Orang Queries
        // $this->db->query("INSERT INTO orang (nama, alamat, created_at, updated_at) VALUES(:nama:, :alamat:, :created_at:, :updated_at:)", $data);

        // Using Query Builder
        // $this->db->table('orang')->insert($data);
        // $this->db->table('orang')->insertBatch($data);
    }
}
