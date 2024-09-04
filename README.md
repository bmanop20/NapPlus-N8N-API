### การส่งข้อมูลผ่าน API ระบบ NAPPLUS (HOSXP V.3)

โดย นายมานพ  บุญจำเนียร   
นักวิชาการคอมพิวเตอร์ปฏิบัติการ   
โรงพยาบาลแม่วาง จังหวัดเชียงใหม่    
Email b.manop20@gmail.com

### [ขั้นตอนการติดตั้ง](https://github.com/bmanop20/NapPlus-N8N-API/tree/main/shell) (Click)

### [เอกสารอื่น ๆ ](https://drive.google.com/drive/folders/1-3XP6dKwj2rolfeSuIxmtjf38OdXCTyY)

สร้างฐานข้อมูลใน Server สำรองที่มีฐาน HosXP อยู่

```sql
create database lookup_db;
```

นำเข้าไฟล์ lookup_db.sql

ตรวจสอบตาราง lab_item_code เพื่อ map รหัส lab จากฐานข้อมูล![1725452870346](image/README/1725452870346.png)

เข้าระบบ n8n  http://`<ip>:5678` หน้าหลักให้คลิกปุ่ม Add Workflow

![1725453418350](image/README/1725453418350.png)

เลือกนำเข้าไฟล์ Nap_API.json

![1725453408487](image/README/1725453408487.png)

Double Click Node mysql ใดก็ได้เพื่อสร้าง Connection ฐานข้อมูล

![1725453735447](image/README/1725453735447.png)

![1725453761160](image/README/1725453761160.png)

กำหนดชื่อ Connection และฐานข้อมูล 

![1725453847116](image/README/1725453847116.png)

เสร็จแล้วให้แก้ไข connection ของ mysql node ทุก ๆ node 

นำ token ที่ได้จากเว็บ NAPPLUS โดย user ของห้อง LAB ไปใส่ในตาราง lab_token

ทำขั้นตอนสร้าง Flow ใหม่โดยนำเข้า Flow จาก Moph_Token.json และนำ user ใส่ในตาราง moph_user 

ขั้นตอนการทำสอบการทำงานสามารถคลิกที่ node เพื่อกดปุ่ม test ![1725455095165](image/README/1725455095165.png)

หรือกดที่ปุ่ม play เพื่อให้ตัว node ทำงาน หากอยากดูผลลัพท์ ให้คลิกที่ node นั้น ๆ 

![1725455134648](image/README/1725455134648.png)


หลังจากกดหนดค่าต่าง ๆ ทดสอบความถูกต้องเสร็จหากอยากให้ระบบทำงานอัตโนมัติ

![1725455440642](image/README/1725455440642.png)
