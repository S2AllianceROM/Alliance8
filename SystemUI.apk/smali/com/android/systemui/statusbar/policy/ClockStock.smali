.class public Lcom/android/systemui/statusbar/policy/ClockStock;
.super Landroid/widget/TextView;
.source "ClockStock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ClockStock$SettingsObserver;
    }
.end annotation


# instance fields
.field private intent:Landroid/content/Intent;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field protected mClockColor:I

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLongClick:Ljava/lang/String;

.field private mShortClick:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/ClockStock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/ClockStock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    new-instance v1, Lcom/android/systemui/statusbar/policy/ClockStock$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/ClockStock$1;-><init>(Lcom/android/systemui/statusbar/policy/ClockStock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 102
    new-instance v0, Lcom/android/systemui/statusbar/policy/ClockStock$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/ClockStock$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/ClockStock;Landroid/os/Handler;)V

    .line 103
    .local v0, settingsObserver:Lcom/android/systemui/statusbar/policy/ClockStock$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ClockStock$SettingsObserver;->observe()V

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->updateSettings()V

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mShortClick:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mShortClick:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_1

    .line 106
    :cond_0
    const-string v1, "**nothing**"

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mShortClick:Ljava/lang/String;

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_3

    .line 109
    :cond_2
    const-string v1, "**nothing**"

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

    .line 112
    .end local v0           #settingsObserver:Lcom/android/systemui/statusbar/policy/ClockStock$SettingsObserver;
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/ClockStock;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/ClockStock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/ClockStock;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/ClockStock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/ClockStock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->updateClock()V

    return-void
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 20

    .prologue
    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 171
    .local v8, context:Landroid/content/Context;
    invoke-static {v8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    .line 174
    .local v6, b24:Z
    if-eqz v6, :cond_2

    .line 175
    const v15, 0x10400a3

    .line 180
    .local v15, res:I
    :goto_0
    const v2, 0xef00

    .line 181
    .local v2, MAGIC1:C
    const v3, 0xef01

    .line 184
    .local v3, MAGIC2:C
    invoke-virtual {v8, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 185
    .local v9, format:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/ClockStock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 192
    const/4 v4, -0x1

    .line 193
    .local v4, a:I
    const/4 v14, 0x0

    .line 194
    .local v14, quoted:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    .line 195
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 197
    .local v7, c:C
    const/16 v18, 0x27

    move/from16 v0, v18

    if-ne v7, v0, :cond_0

    .line 198
    if-nez v14, :cond_3

    const/4 v14, 0x1

    .line 200
    :cond_0
    :goto_2
    if-nez v14, :cond_4

    const/16 v18, 0x61

    move/from16 v0, v18

    if-ne v7, v0, :cond_4

    .line 201
    move v4, v11

    .line 206
    .end local v7           #c:C
    :cond_1
    if-ltz v4, :cond_6

    .line 208
    move v5, v4

    .line 209
    .local v5, b:I
    :goto_3
    if-lez v4, :cond_5

    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 210
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 177
    .end local v2           #MAGIC1:C
    .end local v3           #MAGIC2:C
    .end local v4           #a:I
    .end local v5           #b:I
    .end local v9           #format:Ljava/lang/String;
    .end local v11           #i:I
    .end local v14           #quoted:Z
    .end local v15           #res:I
    :cond_2
    const v15, 0x10400a2

    .restart local v15       #res:I
    goto :goto_0

    .line 198
    .restart local v2       #MAGIC1:C
    .restart local v3       #MAGIC2:C
    .restart local v4       #a:I
    .restart local v7       #c:C
    .restart local v9       #format:Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v14       #quoted:Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 194
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 212
    .end local v7           #c:C
    .restart local v5       #b:I
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0xef00

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "a"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0xef01

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v5, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 217
    .end local v5           #b:I
    :cond_6
    new-instance v17, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v17, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/ClockStock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 218
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/statusbar/policy/ClockStock;->mClockFormatString:Ljava/lang/String;

    .line 222
    .end local v4           #a:I
    .end local v11           #i:I
    .end local v14           #quoted:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/ClockStock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 225
    .local v16, result:Ljava/lang/String;
    const v18, 0xef00

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 226
    .local v12, magic1:I
    const v18, 0xef01

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 227
    .local v13, magic2:I
    if-ltz v12, :cond_8

    if-le v13, v12, :cond_8

    .line 228
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 230
    .local v10, formatted:Landroid/text/SpannableStringBuilder;
    add-int/lit8 v18, v13, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v12, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 243
    .end local v10           #formatted:Landroid/text/SpannableStringBuilder;
    :goto_5
    return-object v10

    .line 220
    .end local v12           #magic1:I
    .end local v13           #magic2:I
    .end local v16           #result:Ljava/lang/String;
    .end local v17           #sdf:Ljava/text/SimpleDateFormat;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/ClockStock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    .restart local v17       #sdf:Ljava/text/SimpleDateFormat;
    goto :goto_4

    .restart local v12       #magic1:I
    .restart local v13       #magic2:I
    .restart local v16       #result:Ljava/lang/String;
    :cond_8
    move-object/from16 v10, v16

    .line 243
    goto :goto_5
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 118
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mAttached:Z

    if-nez v1, :cond_0

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mAttached:Z

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 134
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mCalendar:Ljava/util/Calendar;

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->updateClock()V

    .line 138
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "statusbar"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 250
    .local v4, statusBarManager:Landroid/app/StatusBarManager;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

    const-string v6, "**nothing**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 288
    :goto_0
    return-void

    .line 254
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mShortClick:Ljava/lang/String;

    const-string v6, "**today**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 261
    .local v2, startMillis:J
    sget-object v5, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 262
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v5, "time"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 263
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 264
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    .line 281
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #startMillis:J
    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 282
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 286
    :goto_3
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapse()V

    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 266
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mShortClick:Ljava/lang/String;

    const-string v6, "**event**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 267
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    goto :goto_2

    .line 269
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mShortClick:Ljava/lang/String;

    const-string v6, "**assist**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 270
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.speech.action.WEB_SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    goto :goto_2

    .line 271
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mShortClick:Ljava/lang/String;

    const-string v6, "**alarm**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 272
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SET_ALARM"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    goto :goto_2

    .line 275
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mShortClick:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 276
    :catch_1
    move-exception v1

    .line 277
    .local v1, e:Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_2

    .line 283
    .end local v1           #e:Ljava/net/URISyntaxException;
    :catch_2
    move-exception v1

    .line 284
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mAttached:Z

    .line 147
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "statusbar"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 294
    .local v4, statusBarManager:Landroid/app/StatusBarManager;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

    const-string v6, "**nothing**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 332
    :goto_0
    return v7

    .line 298
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

    const-string v6, "**today**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 305
    .local v2, startMillis:J
    sget-object v5, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 306
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v5, "time"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 307
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 308
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    .line 325
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #startMillis:J
    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 326
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 330
    :goto_3
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapse()V

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 310
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

    const-string v6, "**event**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 311
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    goto :goto_2

    .line 313
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

    const-string v6, "**assist**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 314
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.speech.action.WEB_SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    goto :goto_2

    .line 315
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

    const-string v6, "**alarm**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 316
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SET_ALARM"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;

    goto :goto_2

    .line 319
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->intent:Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 320
    :catch_1
    move-exception v1

    .line 321
    .local v1, e:Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_2

    .line 327
    .end local v1           #e:Ljava/net/URISyntaxException;
    :catch_2
    move-exception v1

    .line 328
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3
.end method

.method final updateClock()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ClockStock;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_clock_color"

    const v2, -0xcc4a1a

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ClockStock;->setTextColor(I)V

    .line 167
    return-void
.end method

.method protected updateSettings()V
    .locals 3

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 356
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "notification_clock_shortclick"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mShortClick:Ljava/lang/String;

    .line 359
    const-string v1, "notification_clock_longclick"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLongClick:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->updateClock()V

    .line 361
    return-void
.end method
