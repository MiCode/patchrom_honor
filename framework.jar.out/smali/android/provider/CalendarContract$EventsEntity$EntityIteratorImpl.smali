.class Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "CalendarContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract$EventsEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityIteratorImpl"
.end annotation


# static fields
.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final COLUMN_ATTENDEE_EMAIL:I = 0x1

.field private static final COLUMN_ATTENDEE_NAME:I = 0x0

.field private static final COLUMN_ATTENDEE_RELATIONSHIP:I = 0x2

.field private static final COLUMN_ATTENDEE_STATUS:I = 0x4

.field private static final COLUMN_ATTENDEE_TYPE:I = 0x3

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_METHOD:I = 0x1

.field private static final COLUMN_MINUTES:I = 0x0

.field private static final COLUMN_NAME:I = 0x1

.field private static final COLUMN_VALUE:I = 0x2

.field private static final EXTENDED_PROJECTION:[Ljava/lang/String; = null

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String; = null

.field private static final WHERE_EVENT_ID:Ljava/lang/String; = "event_id=?"


# instance fields
.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1200
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "minutes"

    aput-object v1, v0, v3

    const-string/jumbo v1, "method"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 1207
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "attendeeName"

    aput-object v1, v0, v3

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v4

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v5

    const-string v1, "attendeeType"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "attendeeStatus"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 1219
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "name"

    aput-object v1, v0, v4

    const-string/jumbo v1, "value"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)V
    .locals 1
    .parameter "cursor"
    .parameter "provider"

    .prologue
    .line 1237
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 1238
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    .line 1239
    iput-object p2, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    .line 1240
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "cursor"
    .parameter "resolver"

    .prologue
    .line 1231
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 1232
    iput-object p2, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    .line 1233
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    .line 1234
    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 16
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1245
    const-string v1, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1246
    .local v10, eventId:J
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1247
    .local v8, cv:Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1248
    const-string v1, "calendar_id"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1249
    const-string/jumbo v1, "title"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1250
    const-string v1, "description"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1251
    const-string v1, "eventLocation"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1252
    const-string v1, "eventStatus"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1253
    const-string/jumbo v1, "selfAttendeeStatus"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1254
    const-string v1, "dtstart"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1255
    const-string v1, "dtend"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1256
    const-string v1, "duration"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1257
    const-string v1, "eventTimezone"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1258
    const-string v1, "eventEndTimezone"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1259
    const-string v1, "allDay"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1260
    const-string v1, "accessLevel"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1261
    const-string v1, "availability"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1262
    const-string v1, "hasAlarm"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1263
    const-string v1, "hasExtendedProperties"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1265
    const-string/jumbo v1, "rrule"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1266
    const-string/jumbo v1, "rdate"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1267
    const-string v1, "exrule"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1268
    const-string v1, "exdate"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1269
    const-string/jumbo v1, "original_sync_id"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1270
    const-string/jumbo v1, "original_id"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1271
    const-string/jumbo v1, "originalInstanceTime"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1273
    const-string/jumbo v1, "originalAllDay"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1274
    const-string v1, "lastDate"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1275
    const-string v1, "hasAttendeeData"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1276
    const-string v1, "guestsCanInviteOthers"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1278
    const-string v1, "guestsCanModify"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1279
    const-string v1, "guestsCanSeeGuests"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1280
    const-string/jumbo v1, "organizer"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1281
    const-string v1, "_sync_id"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1282
    const-string v1, "dirty"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1283
    const-string v1, "lastSynced"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1284
    const-string v1, "deleted"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1285
    const-string/jumbo v1, "sync_data1"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1286
    const-string/jumbo v1, "sync_data2"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1287
    const-string/jumbo v1, "sync_data3"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1288
    const-string/jumbo v1, "sync_data4"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1289
    const-string/jumbo v1, "sync_data5"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1290
    const-string/jumbo v1, "sync_data6"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1291
    const-string/jumbo v1, "sync_data7"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1292
    const-string/jumbo v1, "sync_data8"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1293
    const-string/jumbo v1, "sync_data9"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1294
    const-string/jumbo v1, "sync_data10"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1295
    const-string v1, "cal_sync1"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1296
    const-string v1, "cal_sync2"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1297
    const-string v1, "cal_sync3"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1298
    const-string v1, "cal_sync4"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1299
    const-string v1, "cal_sync5"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1300
    const-string v1, "cal_sync6"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1301
    const-string v1, "cal_sync7"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1302
    const-string v1, "cal_sync8"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1303
    const-string v1, "cal_sync9"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1304
    const-string v1, "cal_sync10"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1306
    new-instance v9, Landroid/content/Entity;

    invoke-direct {v9, v8}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 1308
    .local v9, entity:Landroid/content/Entity;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    .line 1309
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const-string v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1320
    .local v14, subCursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1321
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1322
    .local v13, reminderValues:Landroid/content/ContentValues;
    const-string/jumbo v1, "minutes"

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1323
    const-string/jumbo v1, "method"

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1324
    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v1, v13}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1327
    .end local v13           #reminderValues:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1314
    .end local v14           #subCursor:Landroid/database/Cursor;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const-string v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .restart local v14       #subCursor:Landroid/database/Cursor;
    goto :goto_0

    .line 1327
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1330
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_2

    .line 1331
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1342
    :goto_1
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1343
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1344
    .local v7, attendeeValues:Landroid/content/ContentValues;
    const-string v1, "attendeeName"

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    const-string v1, "attendeeEmail"

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    const-string v1, "attendeeRelationship"

    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1350
    const-string v1, "attendeeType"

    const/4 v2, 0x3

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1352
    const-string v1, "attendeeStatus"

    const/4 v2, 0x4

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1354
    sget-object v1, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v1, v7}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1357
    .end local v7           #attendeeValues:Landroid/content/ContentValues;
    :catchall_1
    move-exception v1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1336
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto :goto_1

    .line 1357
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1360
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_4

    .line 1361
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    const-string v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1372
    :goto_2
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1373
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1374
    .local v12, extendedValues:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    const-string/jumbo v1, "name"

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    const-string/jumbo v1, "value"

    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    sget-object v1, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v1, v12}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 1383
    .end local v12           #extendedValues:Landroid/content/ContentValues;
    :catchall_2
    move-exception v1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1366
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v2, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    const-string v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto :goto_2

    .line 1383
    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1386
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1387
    return-object v9
.end method
