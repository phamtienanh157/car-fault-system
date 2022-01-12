<?php
include("./config.php");
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Car fault diagnosis system</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <h2 class="mb-3">Bạn hãy trả lời các câu hỏi dưới đây</h2>
    <div class="mb-2">
      Lưu ý: (<span class="required">*</span>) là những câu hỏi bắt buộc
    </div>
    <form method="post" action="./main.php">
      <div class="row">
        <!-- Trạng thái của động cơ -->
        <div class="mb-4 col-4">
          <label class="form-label"
            >1. Động cơ của xe hoạt động như thế nào ?
            <span class="required">*</span></label
          >
          <select class="form-select" name="question1" required>
            <option selected value="">--- Chọn ---</option>
            <?php 
              $sql = "select * from engine_status";
              $result = mysqli_query($db, $sql);
              if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                  echo '<option value="'. $row['id'] .'">'.$row['name'].'</option>';
                }
              }
            ?>
          </select>
        </div>
        <!-- Chết máy đột ngột -->
        <div class="mb-4 col-4">
          <label class="form-label"
            >2. Xe có bị chết máy đột ngột không ?
            <span class="required">*</span></label
          >
          <select class="form-select" name="question2" required>
            <option selected value="">--- Chọn ---</option>
            <?php 
              $sql = "select * from sudden_shutdown";
              $result = mysqli_query($db, $sql);
              if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                  echo '<option value="'. $row['id'] .'">'.$row['name'].'</option>';
                }
              }
            ?>
          </select>
        </div>
        <!-- Đèn cảnh báo động cơ -->
        <div class="mb-4 col-4">
          <label class="form-label d-block"
            >3. Đèn cảnh báo động cơ có sáng không ?
            <span class="required">*</span></label
          >
          <div class="form-check form-check-inline">
            <input
              class="form-check-input"
              type="radio"
              name="question3"
              id="question3-inlineRadio1"
              value="1"
              required
            />
            <label class="form-check-label" for="question3-inlineRadio1"
              >Bật</label
            >
          </div>
          <div class="form-check form-check-inline">
            <input
              class="form-check-input"
              type="radio"
              name="question3"
              id="question3-inlineRadio2"
              value="2"
              required
            />
            <label class="form-check-label" for="question3-inlineRadio2"
              >Tắt</label
            >
          </div>
        </div>
        <!-- Xăng -->
        <div class="mb-4 col-4">
          <label class="form-label"
            >4. Xăng có còn không ? <span class="required">*</span></label
          >
          <select class="form-select" name="question4" required>
            <option selected value="">--- Chọn ---</option>
            <?php 
              $sql = "select * from gasoline";
              $result = mysqli_query($db, $sql);
              if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                  echo '<option value="'. $row['id'] .'">'.$row['name'].'</option>';
                }
              }
            ?>
          </select>
        </div>
        <!-- Ắc quy -->
        <div class="mb-4 col-4">
          <label class="form-label"
            >5. Tuổi thọ của ắc quy hiện tại là bao lâu ?
            <span class="required">*</span></label
          >
          <select class="form-select" name="question5" required>
            <option selected value="">--- Chọn ---</option>
            <?php 
              $sql = "select * from battery";
              $result = mysqli_query($db, $sql);
              if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                  echo '<option value="'. $row['id'] .'">'.$row['name'].'</option>';
                }
              }
            ?>
          </select>
        </div>
        <!-- Xe rung lắc mạnh -->
        <div class="mb-4 col-4">
          <label class="form-label d-block"
            >6. Xe có hiện tượng rung lắc mạnh không ?
            <span class="required">*</span></label
          >
          <div class="form-check form-check-inline">
            <input
              class="form-check-input"
              type="radio"
              name="question6"
              id="question6-inlineRadio1"
              value="1"
              required
            />
            <label class="form-check-label" for="question6-inlineRadio1"
              >Có</label
            >
          </div>
          <div class="form-check form-check-inline">
            <input
              class="form-check-input"
              type="radio"
              name="question6"
              id="question6-inlineRadio2"
              value="2"
              required
            />
            <label class="form-check-label" for="question6-inlineRadio2"
              >Không</label
            >
          </div>
        </div>
        <!-- Tiếng ồn bất thường -->
        <div class="mb-4 col-4">
          <label class="form-label d-block"
            >7. Bạn có nghe thấy tiếng ồn bất thường không ?
            <span class="required">*</span></label
          >
          <div class="form-check form-check-inline">
            <input
              class="form-check-input"
              type="radio"
              name="question7"
              id="question7-inlineRadio1"
              value="1"
              required
            />
            <label class="form-check-label" for="question7-inlineRadio1"
              >Có</label
            >
          </div>
          <div class="form-check form-check-inline">
            <input
              class="form-check-input"
              type="radio"
              name="question7"
              id="question7-inlineRadio2"
              value="2"
              required
            />
            <label class="form-check-label" for="question7-inlineRadio7"
              >Không</label
            >
          </div>
        </div>
        <!-- Mùi khét -->
        <div class="mb-4 col-4">
          <label class="form-label d-block"
            >8. Bạn có ngửi thấy mùi khét không ?
            <span class="required">*</span></label
          >
          <div class="form-check form-check-inline">
            <input
              class="form-check-input"
              type="radio"
              name="question8"
              id="question8-inlineRadio1"
              value="1"
              required
            />
            <label class="form-check-label" for="question8-inlineRadio1"
              >Có</label
            >
          </div>
          <div class="form-check form-check-inline">
            <input
              class="form-check-input"
              type="radio"
              name="question8"
              id="question8-inlineRadio2"
              value="2"
              required
            />
            <label class="form-check-label" for="question8-inlineRadio2"
              >Không</label
            >
          </div>
        </div>
        <!-- Dầu nhớt bị rò rỉ -->
        <div class="mb-4 col-4">
          <label class="form-label d-block"
            >9. Xe có bị rò rỉ dầu nhớt không ?
            <span class="required">*</span></label
          >
          <div class="form-check form-check-inline">
            <input
              class="form-check-input"
              type="radio"
              name="question9"
              id="question9-inlineRadio1"
              value="1"
              required
            />
            <label class="form-check-label" for="question9-inlineRadio1"
              >Có</label
            >
          </div>
          <div class="form-check form-check-inline">
            <input
              class="form-check-input"
              type="radio"
              name="question9"
              id="question9-inlineRadio2"
              value="2"
              required
            />
            <label class="form-check-label" for="question9-inlineRadio2"
              >Không</label
            >
          </div>
        </div>
        <!-- Đèn pha -->
        <div class="mb-4 col-4">
          <label class="form-label">10. Đèn pha có hoạt động không ?</label>
          <select class="form-select" name="question10">
            <option selected value="">--- Chọn ---</option>
            <?php 
              $sql = "select * from headlight";
              $result = mysqli_query($db, $sql);
              if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                  echo '<option value="'. $row['id'] .'">'.$row['name'].'</option>';
                }
              }
            ?>
          </select>
        </div>
        <!-- Hãng xe -->
        <div class="mb-4 col-4">
          <label class="form-label">11. Xe bạn thuộc hãng xe nào ?</label>
          <select class="form-select" name="question11">
            <option selected value="">--- Chọn ---</option>
            <?php 
              $sql = "select * from company";
              $result = mysqli_query($db, $sql);
              if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                  echo '<option value="'. $row['id'] .'">'.$row['name'].'</option>';
                }
              }
            ?>
          </select>
        </div>
        <!-- Lốp xe -->
        <div class="mb-4 col-4">
          <label class="form-label"
            >12. Tuổi thọ của lốp xe hiện tại là bao lâu ?</label
          >
          <select class="form-select" name="question12">
            <option selected value="">--- Chọn ---</option>
            <?php 
              $sql = "select * from tire";
              $result = mysqli_query($db, $sql);
              if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                  echo '<option value="'. $row['id'] .'">'.$row['name'].'</option>';
                }
              }
            ?>
          </select>
        </div>
        <!-- Phanh -->
        <div class="mb-4 col-4">
          <label class="form-label">13. Phanh hoạt động như nào ?</label>
          <select class="form-select" name="question13">
            <option selected value="">--- Chọn ---</option>
            <option value="1">Bình thường</option>
            <option value="2">Không ăn</option>
          </select>
        </div>
      </div>
      <button type="submit" class="btn btn-primary" name="submit">
        Kiểm tra
      </button>
    </form>
  </body>
</html>
