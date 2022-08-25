פרויקט :  observatory ASCOM automation 

הקדמה: 
הפרויקט שלי קשור ל אסטרונומיה.  
תצפית אסטרומה דורשת אינטגרציה של יישומים מרובים משתמשים ברישום אוטומטי באמצעות הדמיה סטנדרטית ,  בפרויקט זה השתמשנו בתוכנה MAXIM DL,   היא אוסף של מנהלי התקנים למחשבים עבור מכשירים שונים הקשורים לאסטרונומיה. הוא משתמש בתקנים מוסכמים המאפשרים לתוכניות מחשב שונות ("אפליקציות") ולהתקנים לתקשר זה עם זה בו זמנית. תומך ברכישת נתוני תמונה עם מצלמות CCD, DSLR ומצלמות סטרימינג באמצעות מגוון רחב של מנהלי התקנים קנייניים, מנהלי התקנים של צד שלישי ו-ASCOM נהגים. 
 MaxIm DL שולט גם במגוון חומרה הקשורה להדמיה (טלסקופים, מתמקדים וכו') נתמך על ידי מנהלי התקנים של ASCOM. כלולים גם עיבוד וניתוח תמונות רבי עוצמה מאפיינים. מדריך זה לתחילת העבודה יגרום לך להתחיל לעבוד, עם התמקדות בשמיים עמוקים של 'תמונה יפה' הדמיה, תוך זמן קצר בכלל. \

משימה המרכזית  : 
יש בתוך התוכנה  MaxIm DL  כל מיני תהלכים שאפשר לבצע , אחד התהלכים החשובים נקרא : "autoSave " :
 רצף שמירה אוטומטית רצפי שמירה אוטומטית משמשים לרכישת סדרות ארוכות של חשיפות. שימושים אופייניים כוללים: חשיפת תמונות מרובות של מטרה לערימה חשיפת מסננים מרובים על אותה מטרה עבור הדמיית LRGB או עבור מחקרים פוטומטריים מרובי פס רכישת סטים של מסגרות כיול רצפים מוגדרים באמצעות תיבת הדו-שיח הגדרות שמירה אוטומטית, המופעלת באמצעות הלחצן שמירה אוטומטית בכרטיסייה חשיפה , זה בעצם חלון שיש בתוכנה זו שיש בה כל מיני פרמטרים שאפשר להגדיר או לשנות עבור כל תמונה , למשל אפשר לבחור באיזה פלטיר להשתמש בכל תמונה , כמה תמונות אנחנו רוצים , וכל מיני דברים שונים 
אז המשימה שלי ההיתה לבנות איזה שהוא script שעושה את כל התהליך הזה אוטומטי . 

דרך העבודה \ מצאית הפתרון : 

אחרי כל מיני חיפושים שעשיתי כדי למצוא משהו קשור לתהליך זה מצאתי ב API של התוכנה תהליך שנקרא "StartSequence" , וגם יש אופציה בחלון autosave לשמור את הנתונים שיש לנו בקובץ מסוג .seq , שזה בעצם קובץ שיש בה כל פרמטר , ארגומנט שנמצא על החלון הזה , וגם הערך שלו , ואנחנו יכולים ישר לפתוח אותו ולשנות הכל , אחרי שמצאתי את הקובץ הזה יצרתי סקירפט ואז בריגע שאני מתייחסת לתוכנה שירות כלשהו של ווינדוס פותח את התוכנה (MAXIM DL) וטוען את הסקריפט לתוכנה . 
הסקריפט עצמו עושה את הפעולה הבאה : הוא יוצר אובייקט מסוג מצלמה כלשהי , מחבר אותה מעלה את החלון שלה ואז טוען את הקובץ seq ומתחיל להריץ אותו ולייצר כל מיני תמונות עם כל מיני ברטים שאנחנו רוצים . 
 