# TODO: Fix View Action for Peraturan Perusahaan

## Steps to Complete
- [x] Modify PeraturanPerusahaanController.php view() method to return HTML string instead of echoing full page
- [x] Update peraturan-perusahaan/index.php to handle view action inline in main content div
- [x] Remove target="_blank" from view link to keep in same page
- [x] Test the view functionality to ensure file displays correctly in main div
- [x] Keep upload directory in uploads/peraturan_perusahaan/ and use base64 encoding for all file types
- [x] View functionality works for all supported file formats (PDF, DOC, DOCX, XLS, XLSX) using base64 embed
