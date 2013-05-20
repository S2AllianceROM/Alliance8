.class public Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;
.super Landroid/widget/LinearLayout;
.source "BatteryControllerNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$SettingsObserver;
    }
.end annotation


# static fields
.field private static mBatteryStyle:I


# instance fields
.field private isAttached:Z

.field private mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryCenterText:Landroid/widget/TextView;

.field private mBatteryEnabled:Z

.field private mBatteryGroup:Landroid/view/ViewGroup;

.field private mBatteryIcon:Landroid/widget/ImageView;

.field private mBatteryText:Landroid/widget/TextView;

.field private mBatteryTextOnly:Landroid/widget/TextView;

.field private mBatteryTextOnly_Low:Landroid/widget/TextView;

.field private mBatteryTextOnly_Plugged:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mLevel:I

.field private mPlugged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mIconViews:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mLabelViews:Ljava/util/ArrayList;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mLevel:I

    .line 63
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mPlugged:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->isAttached:Z

    .line 115
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setBatteryIcon(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->updateSettings()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    return-void
.end method

.method private setBatteryIcon(IZ)V
    .locals 12
    .parameter "level"
    .parameter "plugged"

    .prologue
    .line 131
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mLevel:I

    .line 132
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mPlugged:Z

    .line 133
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 134
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v7, "statusbar_battery_icon"

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryStyle:I

    .line 137
    sget v7, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryStyle:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 138
    if-eqz p2, :cond_0

    const v4, 0x7f020334

    .line 144
    .local v4, icon:I
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 145
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 146
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 147
    .local v6, v:Landroid/widget/ImageView;
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 149
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mContext:Landroid/content/Context;

    const v8, 0x7f0a00c9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 138
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #icon:I
    .end local v6           #v:Landroid/widget/ImageView;
    :cond_0
    const v4, 0x7f020335

    goto :goto_0

    .line 141
    :cond_1
    if-eqz p2, :cond_2

    const v4, 0x7f0200af

    .restart local v4       #icon:I
    :goto_2
    goto :goto_0

    .end local v4           #icon:I
    :cond_2
    const v4, 0x7f0200a6

    goto :goto_2

    .line 152
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v4       #icon:I
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 153
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_4

    .line 154
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 155
    .local v6, v:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0079

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 160
    .end local v6           #v:Landroid/widget/TextView;
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryGroup:Landroid/view/ViewGroup;

    if-eqz v7, :cond_5

    .line 161
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 165
    .local v2, formatted:Landroid/text/SpannableStringBuilder;
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v7, 0x3f333333

    invoke-direct {v5, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 167
    .local v5, style:Landroid/text/style/CharacterStyle;
    const/16 v7, 0xa

    if-ge p1, v7, :cond_6

    .line 168
    const/4 v7, 0x1

    const/4 v8, 0x2

    const/16 v9, 0x22

    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 177
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly_Low:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly_Plugged:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    sget v7, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryStyle:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 181
    if-eqz p2, :cond_8

    .line 182
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly_Plugged:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly_Low:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    .end local v2           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v5           #style:Landroid/text/style/CharacterStyle;
    :cond_5
    :goto_5
    return-void

    .line 170
    .restart local v2       #formatted:Landroid/text/SpannableStringBuilder;
    .restart local v5       #style:Landroid/text/style/CharacterStyle;
    :cond_6
    const/16 v7, 0x64

    if-ge p1, v7, :cond_7

    .line 171
    const/4 v7, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x22

    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 174
    :cond_7
    const/4 v7, 0x3

    const/4 v8, 0x4

    const/16 v9, 0x22

    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 185
    :cond_8
    const/16 v7, 0x10

    if-ge p1, v7, :cond_9

    .line 186
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly_Plugged:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly_Low:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 190
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly_Plugged:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly_Low:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 195
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly_Plugged:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly_Low:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method private updateSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 246
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "notification_battery_display"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryEnabled:Z

    .line 251
    const-string v1, "statusbar_battery_icon"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryStyle:I

    .line 254
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryEnabled:Z

    if-eqz v1, :cond_0

    .line 255
    sget v1, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryStyle:I

    packed-switch v1, :pswitch_data_0

    .line 293
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setVisibility(I)V

    .line 310
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mLevel:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mPlugged:Z

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setBatteryIcon(IZ)V

    .line 312
    return-void

    .line 257
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setVisibility(I)V

    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setVisibility(I)V

    goto :goto_0

    .line 269
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setVisibility(I)V

    goto :goto_0

    .line 275
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setVisibility(I)V

    goto :goto_0

    .line 281
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setVisibility(I)V

    goto :goto_0

    .line 287
    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setVisibility(I)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly_Low:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly_Plugged:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setVisibility(I)V

    goto/16 :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public isVisible(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/16 v3, 0x8

    .line 223
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "notification_battery_display"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryEnabled:Z

    .line 227
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->isAttached:Z

    if-eqz v1, :cond_0

    .line 228
    if-eqz p1, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->updateSettings()V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly_Low:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly_Plugged:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->init()V

    .line 84
    const v1, 0x7f0d011e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryGroup:Landroid/view/ViewGroup;

    .line 85
    const v1, 0x7f0d0044

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    .line 86
    const v1, 0x7f0d00ab

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f0d0120

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f0d0121

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    .line 89
    const v1, 0x7f0d0122

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly_Low:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f0d0123

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly_Plugged:Landroid/widget/TextView;

    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->addIconView(Landroid/widget/ImageView;)V

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->isAttached:Z

    .line 95
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;Landroid/os/Handler;)V

    .line 96
    .local v0, settingsObserver:Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$SettingsObserver;->observe()V

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->updateSettings()V

    .line 99
    return-void
.end method
