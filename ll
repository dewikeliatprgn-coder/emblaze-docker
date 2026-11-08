[35m.env.example[m[36m:[m[32m4[m[36m:[mDB_[1;31mPASSWORD[m=change_me
[35mREADME.md[m[36m:[m[32m33[m[36m:[mSalin file contoh, lalu isi [1;31mpassword[m sendiri:
[35mREADME.md[m[36m:[m[32m39[m[36m:[mBuka `.env` dan ganti `change_me` dengan [1;31mpassword[m pilihanmu. Jangan dikosongkan.
[35mREADME.md[m[36m:[m[32m46[m[36m:[m| DB_[1;31mPASSWORD[m   | [1;31mPassword[m database              | (isi sendiri) |
[35mREADME.md[m[36m:[m[32m87[m[36m:[m| Warning `variable is not set` | File `.env` belum dibuat | `copy .env.example .env`, isi [1;31mpassword[m |
[35mREADME.md[m[36m:[m[32m96[m[36m:[m- [1;31mPassword[m di `.env` hanya untuk pengembangan lokal.
[35mcompose.yaml[m[36m:[m[32m5[m[36m:[m      MYSQL_ROOT_[1;31mPASSWORD[m: ${DB_[1;31mPASSWORD[m}
[35mcompose.yaml[m[36m:[m[32m10[m[36m:[m      test: ["CMD-SHELL", "mysqladmin ping -h 127.0.0.1 -p$$MYSQL_ROOT_[1;31mPASSWORD[m --silent"]
[35mcompose.yaml[m[36m:[m[32m23[m[36m:[m      DB_[1;31mPASSWORD[m: ${DB_[1;31mPASSWORD[m}
[35mcompose.yaml[m[36m:[m[32m38[m[36m:[m      DB_PASS: ${DB_[1;31mPASSWORD[m}
[35mdatabase/server.js[m[36m:[m[32m19[m[36m:[m    [1;31mpassword[m: process.env.DB_[1;31mPASSWORD[m,
[35mdatabase/server.js[m[36m:[m[32m35[m[36m:[m        [1;31mpassword[m VARCHAR(255) NOT NULL, 
[35mdatabase/server.js[m[36m:[m[32m92[m[36m:[m    const { username, [1;31mpassword[m, email } = req.body;
[35mdatabase/server.js[m[36m:[m[32m94[m[36m:[m        const hashed[1;31mPassword[m = await bcrypt.hash([1;31mpassword[m, 10);
[35mdatabase/server.js[m[36m:[m[32m95[m[36m:[m        const query = "INSERT INTO users (username, [1;31mpassword[m, email) VALUES (?, ?, ?)";
[35mdatabase/server.js[m[36m:[m[32m96[m[36m:[m        db.query(query, [username, hashed[1;31mPassword[m, email], (err) => {
[35mdatabase/server.js[m[36m:[m[32m105[m[36m:[m    const { username, [1;31mpassword[m } = req.body;
[35mdatabase/server.js[m[36m:[m[32m109[m[36m:[m        const match = await bcrypt.compare([1;31mpassword[m, results[0].[1;31mpassword[m);
[35mdatabase/server.js[m[36m:[m[32m111[m[36m:[m        else res.status(401).json({ message: "[1;31mPassword[m salah!" });
[35mdb_webdev.sql[m[36m:[m[32m109[m[36m:[m  `[1;31mpassword[m` varchar(255) NOT NULL,
[35mdb_webdev.sql[m[36m:[m[32m118[m[36m:[mINSERT INTO `users` (`id`, `username`, `[1;31mpassword[m`, `email`, `created_at`) VALUES
[35mfrontend/admin-20260419T064702Z-3-001/admin/admin_login.php[m[36m:[m[32m9[m[36m:[m    $[1;31mpassword[m = $_POST['[1;31mpassword[m'] ?? '';
[35mfrontend/admin-20260419T064702Z-3-001/admin/admin_login.php[m[36m:[m[32m15[m[36m:[m    if ($admin && [1;31mpassword[m_verify($[1;31mpassword[m, $admin['[1;31mpassword[m'])) {
[35mfrontend/admin-20260419T064702Z-3-001/admin/admin_login.php[m[36m:[m[32m22[m[36m:[m        $error = 'Email atau [1;31mpassword[m salah, atau akun bukan admin.';
[35mfrontend/admin-20260419T064702Z-3-001/admin/admin_login.php[m[36m:[m[32m73[m[36m:[m            <label class="form-label-admin" for="[1;31mpassword[m">[1;31mPassword[m</label>
[35mfrontend/admin-20260419T064702Z-3-001/admin/admin_login.php[m[36m:[m[32m75[m[36m:[m              <input class="form-input-admin" type="[1;31mpassword[m" id="[1;31mpassword[m" name="[1;31mpassword[m" placeholder="••••••••" required autocomplete="current-[1;31mpassword[m" />
[35mfrontend/admin-20260419T064702Z-3-001/admin/admin_login.php[m[36m:[m[32m92[m[36m:[m  const inp = document.getElementById('[1;31mpassword[m');
[35mfrontend/admin-20260419T064702Z-3-001/admin/admin_login.php[m[36m:[m[32m93[m[36m:[m  inp.type = inp.type === '[1;31mpassword[m' ? 'text' : '[1;31mpassword[m';
[35mfrontend/login.js[m[36m:[m[32m50[m[36m:[mdocument.getElementById('toggle[1;31mPassword[m').addEventListener('click', () => {
[35mfrontend/login.js[m[36m:[m[32m51[m[36m:[m    const pwd = document.getElementById('[1;31mpassword[m');
[35mfrontend/login.js[m[36m:[m[32m52[m[36m:[m    pwd.type = pwd.type === '[1;31mpassword[m' ? 'text' : '[1;31mpassword[m';
[35mfrontend/login.js[m[36m:[m[32m68[m[36m:[m    const [1;31mpassword[m = document.getElementById('[1;31mpassword[m').value;
[35mfrontend/login.js[m[36m:[m[32m71[m[36m:[m    if (!email || ![1;31mpassword[m) {
[35mfrontend/login.js[m[36m:[m[32m78[m[36m:[m    form.append('[1;31mpassword[m', [1;31mpassword[m);
[35mfrontend/login.js[m[36m:[m[32m83[m[36m:[m        const confirm = document.getElementById('confirm[1;31mPassword[m').value;
[35mfrontend/login.js[m[36m:[m[32m86[m[36m:[m        if ([1;31mpassword[m !== confirm) {
[35mfrontend/login.js[m[36m:[m[32m87[m[36m:[m            showMessage('[1;31mPassword[ms do not match.', 'error');
[35mfrontend/login.js[m[36m:[m[32m129[m[36m:[masync function loginUser(email, [1;31mpassword[m) {
[35mfrontend/login.js[m[36m:[m[32m135[m[36m:[m            body: JSON.stringify({ email, [1;31mpassword[m })
[35mfrontend/login.php[m[36m:[m[32m16[m[36m:[m        $[1;31mpassword[m = [1;31mpassword[m_hash($_POST['[1;31mpassword[m'] ?? '', [1;31mPASSWORD[m_BCRYPT);
[35mfrontend/login.php[m[36m:[m[32m25[m[36m:[m        $stmt = $pdo->prepare("INSERT INTO users (username, email, [1;31mpassword[m) VALUES (?, ?, ?)");
[35mfrontend/login.php[m[36m:[m[32m26[m[36m:[m        $stmt->execute([$username, $email, $[1;31mpassword[m]);
[35mfrontend/login.php[m[36m:[m[32m33[m[36m:[m        $[1;31mpassword[m = $_POST['[1;31mpassword[m'] ?? '';
[35mfrontend/login.php[m[36m:[m[32m39[m[36m:[m        if ($user && [1;31mpassword[m_verify($[1;31mpassword[m, $user['[1;31mpassword[m'])) {
[35mfrontend/login.php[m[36m:[m[32m53[m[36m:[m            echo json_encode(["success" => false, "message" => "Email atau [1;31mpassword[m salah"]);
[35mfrontend/login.php[m[36m:[m[32m152[m[36m:[m            <label class="form-label" for="[1;31mpassword[m">[1;31mPassword[m</label>
[35mfrontend/login.php[m[36m:[m[32m154[m[36m:[m              <input class="form-input" type="[1;31mpassword[m" id="[1;31mpassword[m" placeholder="••••••••" required />
[35mfrontend/login.php[m[36m:[m[32m155[m[36m:[m              <span class="input-icon" id="toggle[1;31mPassword[m">
[35mfrontend/login.php[m[36m:[m[32m162[m[36m:[m            <label class="form-label" for="confirm[1;31mPassword[m">Confirm [1;31mPassword[m</label>
[35mfrontend/login.php[m[36m:[m[32m164[m[36m:[m              <input class="form-input" type="[1;31mpassword[m" id="confirm[1;31mPassword[m" placeholder="••••••••" />
[35mfrontend/login.php[m[36m:[m[32m176[m[36m:[m            <a href="#" class="forgot-link">Forgot [1;31mpassword[m?</a>
[35mfrontend/profile.js[m[36m:[m[32m78[m[36m:[m// ─── Change [1;31mPassword[m ───
[35mfrontend/profile.js[m[36m:[m[32m79[m[36m:[mdocument.getElementById('[1;31mpassword[mForm').addEventListener('submit', function(e) {
[35mfrontend/profile.js[m[36m:[m[32m82[m[36m:[m  const currentPwd = document.getElementById('current[1;31mPassword[m').value;
[35mfrontend/profile.js[m[36m:[m[32m83[m[36m:[m  const newPwd = document.getElementById('new[1;31mPassword[m').value;
[35mfrontend/profile.js[m[36m:[m[32m84[m[36m:[m  const confirmPwd = document.getElementById('confirmNew[1;31mPassword[m').value;
[35mfrontend/profile.js[m[36m:[m[32m87[m[36m:[m    showMessage('Please fill in all [1;31mpassword[m fields.', 'error');
[35mfrontend/profile.js[m[36m:[m[32m92[m[36m:[m    showMessage('New [1;31mpassword[ms do not match.', 'error');
[35mfrontend/profile.js[m[36m:[m[32m97[m[36m:[m    showMessage('[1;31mPassword[m must be at least 6 characters.', 'error');
[35mfrontend/profile.js[m[36m:[m[32m101[m[36m:[m  const btn = document.getElementById('save[1;31mPassword[mBtn');
[35mfrontend/profile.js[m[36m:[m[32m106[m[36m:[m  form.append('action', 'change_[1;31mpassword[m');
[35mfrontend/profile.js[m[36m:[m[32m107[m[36m:[m  form.append('current_[1;31mpassword[m', currentPwd);
[35mfrontend/profile.js[m[36m:[m[32m108[m[36m:[m  form.append('new_[1;31mpassword[m', newPwd);
[35mfrontend/profile.js[m[36m:[m[32m109[m[36m:[m  form.append('confirm_[1;31mpassword[m', confirmPwd);
[35mfrontend/profile.js[m[36m:[m[32m116[m[36m:[m        document.getElementById('[1;31mpassword[mForm').reset();
[35mfrontend/profile.js[m[36m:[m[32m124[m[36m:[m      btn.innerHTML = `<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"/><path d="M7 11V7a5 5 0 0 1 10 0v4"/></svg> Update [1;31mPassword[m`;
[35mfrontend/profile.js[m[36m:[m[32m128[m[36m:[m// ─── Toggle [1;31mPassword[m Visibility ───
[35mfrontend/profile.js[m[36m:[m[32m133[m[36m:[m    input.type = input.type === '[1;31mpassword[m' ? 'text' : '[1;31mpassword[m';
[35mfrontend/profile.php[m[36m:[m[32m41[m[36m:[m    if ($_POST['action'] === 'change_[1;31mpassword[m') {
[35mfrontend/profile.php[m[36m:[m[32m42[m[36m:[m        $currentPwd = $_POST['current_[1;31mpassword[m'] ?? '';
[35mfrontend/profile.php[m[36m:[m[32m43[m[36m:[m        $newPwd     = $_POST['new_[1;31mpassword[m'] ?? '';
[35mfrontend/profile.php[m[36m:[m[32m44[m[36m:[m        $confirmPwd = $_POST['confirm_[1;31mpassword[m'] ?? '';
[35mfrontend/profile.php[m[36m:[m[32m48[m[36m:[m            echo json_encode(["success" => false, "message" => "All [1;31mpassword[m fields are required."]);
[35mfrontend/profile.php[m[36m:[m[32m53[m[36m:[m            echo json_encode(["success" => false, "message" => "New [1;31mpassword[ms do not match."]);
[35mfrontend/profile.php[m[36m:[m[32m58[m[36m:[m            echo json_encode(["success" => false, "message" => "[1;31mPassword[m must be at least 6 characters."]);
[35mfrontend/profile.php[m[36m:[m[32m62[m[36m:[m        $stmt = $pdo->prepare("SELECT [1;31mpassword[m FROM users WHERE id = ?");
[35mfrontend/profile.php[m[36m:[m[32m66[m[36m:[m        if (![1;31mpassword[m_verify($currentPwd, $user['[1;31mpassword[m'])) {
[35mfrontend/profile.php[m[36m:[m[32m67[m[36m:[m            echo json_encode(["success" => false, "message" => "Current [1;31mpassword[m is incorrect."]);
[35mfrontend/profile.php[m[36m:[m[32m71[m[36m:[m        $hashed = [1;31mpassword[m_hash($newPwd, [1;31mPASSWORD[m_BCRYPT);
[35mfrontend/profile.php[m[36m:[m[32m72[m[36m:[m        $update = $pdo->prepare("UPDATE users SET [1;31mpassword[m = ? WHERE id = ?");
[35mfrontend/profile.php[m[36m:[m[32m75[m[36m:[m        echo json_encode(["success" => true, "message" => "[1;31mPassword[m changed successfully."]);
[35mfrontend/profile.php[m[36m:[m[32m252[m[36m:[m          <h2 class="card-title">Change [1;31mPassword[m</h2>
[35mfrontend/profile.php[m[36m:[m[32m253[m[36m:[m          <p class="card-subtitle">Keep your account secure with a strong [1;31mpassword[m</p>
[35mfrontend/profile.php[m[36m:[m[32m255[m[36m:[m          <form id="[1;31mpassword[mForm" autocomplete="off">
[35mfrontend/profile.php[m[36m:[m[32m257[m[36m:[m              <label class="form-label" for="current[1;31mPassword[m">Current [1;31mPassword[m</label>
[35mfrontend/profile.php[m[36m:[m[32m259[m[36m:[m                <input class="form-input" type="[1;31mpassword[m" id="current[1;31mPassword[m" placeholder="••••••••" required />
[35mfrontend/profile.php[m[36m:[m[32m260[m[36m:[m                <span class="input-icon toggle-pwd" data-target="current[1;31mPassword[m">
[35mfrontend/profile.php[m[36m:[m[32m268[m[36m:[m                <label class="form-label" for="new[1;31mPassword[m">New [1;31mPassword[m</label>
[35mfrontend/profile.php[m[36m:[m[32m270[m[36m:[m                  <input class="form-input" type="[1;31mpassword[m" id="new[1;31mPassword[m" placeholder="••••••••" required />
[35mfrontend/profile.php[m[36m:[m[32m271[m[36m:[m                  <span class="input-icon toggle-pwd" data-target="new[1;31mPassword[m">
[35mfrontend/profile.php[m[36m:[m[32m277[m[36m:[m                <label class="form-label" for="confirmNew[1;31mPassword[m">Confirm New [1;31mPassword[m</label>
[35mfrontend/profile.php[m[36m:[m[32m279[m[36m:[m                  <input class="form-input" type="[1;31mpassword[m" id="confirmNew[1;31mPassword[m" placeholder="••••••••" required />
[35mfrontend/profile.php[m[36m:[m[32m280[m[36m:[m                  <span class="input-icon toggle-pwd" data-target="confirmNew[1;31mPassword[m">
[35mfrontend/profile.php[m[36m:[m[32m287[m[36m:[m            <button type="submit" class="btn-save" id="save[1;31mPassword[mBtn">
[35mfrontend/profile.php[m[36m:[m[32m289[m[36m:[m              Update [1;31mPassword[m
[35mfrontend/setup.php[m[36m:[m[32m20[m[36m:[m  `[1;31mpassword[m` varchar(255) NOT NULL,
[35mfrontend/setup.php[m[36m:[m[32m28[m[36m:[m// Insert admin user ([1;31mpassword[m: admin123)
[35mfrontend/setup.php[m[36m:[m[32m29[m[36m:[m$sqls[] = "INSERT IGNORE INTO `users` (`id`,`username`,`[1;31mpassword[m`,`email`,`is_admin`) VALUES
