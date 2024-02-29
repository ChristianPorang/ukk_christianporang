<div class="container-fluid" data-aos="fade" data-aos-delay="500">
    <style>
        .container-fluid {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .post-image {
            width: 50%; /* Sesuaikan ukuran gambar sesuai kebutuhan Anda */
        }

        .comments-section {
            margin-top: 20px; /* Beri margin agar formulir komen terpisah dari komen sebelumnya */
        }

        .comment-form {
            margin-top: 30px; /* Beri margin di atas tombol submit */
        }
    </style>

    <div class="post-details text-center">
        <img src="<?= base_url('images/' . $post['fotop']); ?>" alt="Post Image" class="img-fluid post-image">
        <p><?= $post['deskripsi']; ?></p>
    </div>

    <!-- Tampilkan Komentar -->
    <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    /* Add styles to make the comments section white */
    .comments-section {
      background-color: white;
      padding: 20px; /* Add padding for better spacing */
      border-radius: 1px; /* Optional: Add border radius for rounded corners */
      
    }

    .comment {
      margin-bottom: 10px; /* Add margin between individual comments */
    }
  </style>
</head>
<body>

  <!-- Your HTML comments section -->
  <div class="comments-section text-center">
    <p>Komen:</p>
    <?php foreach ($comments as $comment) : ?>
      <div class="comment">
        <p><strong><?= $comment['username']; ?></strong>: <?= $comment['comment']; ?></p>
      </div>
    <?php endforeach; ?>
  </div>

</body>
</html>


    <!-- HTML Form untuk Komentar -->
    <!-- HTML Form untuk Komentar -->
<form class="comment-form" action="<?= base_url('dashboard/submitComment'); ?>" method="post">
    <input type="hidden" name="post_id" value="<?= $post['id_post']; ?>">
    <textarea name="comment" placeholder="Add a comment"></textarea>
    <br> <!-- Baris baru agar tombol submit berada di bawah kotak komentar -->
    <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    /* Apply styles to the button */
    button {
      padding: 10px 20px;
      font-size: 16px;
      background-color: #4CAF50; /* Green background color */
      color: white; /* White text color */
      border: none; /* Remove border */
      border-radius: 5px; /* Add border radius */
      cursor: pointer;
      transition: background-color 0.3s ease; /* Add smooth transition for hover effect */
    }

    /* Change background color on hover */
    button:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>

  <!-- Your HTML button -->
  <button type="submit">Submit Comment</button>

</body>
</html>

</form>

</div>
