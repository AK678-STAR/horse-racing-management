# Handoff Task - Review PR `feat/46-ho-so-y-te-va-benh-an`

**Gửi team Frontend và Backend,**

Dưới đây là tóm tắt nhanh tình trạng của PR #46 (Hồ sơ y tế và bệnh án) để hai bên nắm thông tin và tiếp tục hoàn thiện:

## 1. Dành cho Team Frontend (FE)
**Làm tốt:** 
- Giao diện UI/UX cho các phần `HerdHealthPage`, `TrainingLockPage`, `CareSchedulePage` và hệ thống Notifications làm rất tốt, đầy đủ tính năng.
- Không có lỗi build/typecheck cản trở hệ thống. Logic fallback (mock data) xử lý êm.

**Cần khắc phục (Làm chưa chuẩn / dư thừa):**
- Đang dính khá nhiều cảnh báo (warnings) linter liên quan đến **`react(set-state-in-effect)`** (gọi setState đồng bộ trong useEffect gây render chuỗi) tại các trang y tế như `CareSchedulePage.tsx`, `HerdHealthPage.tsx`, `MedicalRecordPage.tsx`, v.v. Cần refactor để tối ưu performance.
- Dư thừa một số biến không sử dụng: `eslint(no-unused-vars)` như component `Card` bị import dư ở nhiều trang training, biến `loading` ở `SessionMetricsPage.tsx`. Nhờ dọn dẹp lại cho clean code.

## 2. Dành cho Team Backend (BE)
**Phần bị thiếu / Cần đồng bộ:**
Dựa vào file `src/features/health/api.ts` của FE, hiện tại FE đang phải tự fake/mock data khá nhiều vì thiếu (hoặc chưa chốt) endpoint thật từ BE. Đề nghị team BE rà soát và bổ sung ngay các API sau để FE ghép nối:
- **API Lịch chăm sóc phòng ngừa (Care Schedule):**
  - Cần API Get List: `GET /medical/care-schedules` (FE hiện đang tự loop mảng mock để render).
  - Cần API Record Completion: `POST /medical/care-schedules/:id/complete` hoặc tương tự (FE đang return mock `ok: true`).
- **API Khóa huấn luyện (Training Locks):**
  - Cần API Get List Locks: `GET /medical/locks` hoặc `GET /medical/horses/locks` (FE hiện đang filter từ danh sách ngựa cứng).
  - Đảm bảo các API `POST /medical/horses/:id/lock`, `unlock`, `extend` đã sẵn sàng hoạt động đúng payload FE gửi lên.
- **API Bệnh án (Medical Records Sub-resources):**
  - Rà soát lại format response của các endpoint thêm giai đoạn điều trị (`addTreatmentPhase`), kê đơn thuốc (`addPrescription`), tái khám (`addFollowUp`). FE hiện vẫn đang code theo kiểu "lấy response BE, nếu thiếu thì tự sinh ID/Mock Data đắp vào". BE cần trả về chuẩn Schema của từng Object đó.

---
**Next steps:** 
- **FE:** Cử 1 bạn dọn dẹp linter (fix warnings).
- **BE:** Đối chiếu danh sách API phía trên, triển khai và báo lại FE để thay thế phần mock data trong `api.ts`.
