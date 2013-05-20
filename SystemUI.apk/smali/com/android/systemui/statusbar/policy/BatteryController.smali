.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/widget/LinearLayout;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;
    }
.end annotation


# static fields
.field private static mBatteryStyle:I


# instance fields
.field private mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryCenterText:Landroid/widget/TextView;

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
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPlugged:Z

    .line 110
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BatteryController;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/BatteryController;->setBatteryIcon(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateSettings()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    return-void
.end method

.method private setBatteryIcon(IZ)V
    .locals 13
    .parameter "level"
    .parameter "plugged"

    .prologue
    .line 126
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    .line 127
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPlugged:Z

    .line 128
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 129
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v7, "statusbar_battery_icon"

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStyle:I

    .line 132
    sget v7, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStyle:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 133
    if-eqz p2, :cond_0

    const v4, 0x7f020334

    .line 139
    .local v4, icon:I
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 140
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 141
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 142
    .local v6, v:Landroid/widget/ImageView;
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v1, "batt_color"

    const v4, -0xcc4a1a

    invoke-static {v7, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v12, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 143
    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 144
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

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

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 133
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #icon:I
    .end local v6           #v:Landroid/widget/ImageView;
    :cond_0
    const v4, 0x7f020335

    goto :goto_0

    .line 136
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

    .line 147
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v4       #icon:I
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 148
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_4

    .line 149
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 150
    .local v6, v:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

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

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 155
    .end local v6           #v:Landroid/widget/TextView;
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryGroup:Landroid/view/ViewGroup;

    if-eqz v7, :cond_5

    .line 156
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v1, "batt_text_color"

    const v4, -0xcc4a1a

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v1, "batt_text_color"

    const v4, -0xcc4a1a

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
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

    .line 160
    .local v2, formatted:Landroid/text/SpannableStringBuilder;
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v7, 0x3f333333

    invoke-direct {v5, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 162
    .local v5, style:Landroid/text/style/CharacterStyle;
    const/16 v7, 0xa

    if-ge p1, v7, :cond_6

    .line 163
    const/4 v7, 0x1

    const/4 v8, 0x2

    const/16 v9, 0x22

    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 172
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v1, "batt_text_color"

    const v4, -0xcc4a1a

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly_Low:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v1, "low_batt_color"

    const v4, -0xcc4a1a

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly_Plugged:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v1, "charge_color"

    const v4, -0xcc4a1a

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    sget v7, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStyle:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 176
    if-eqz p2, :cond_8

    .line 177
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly_Plugged:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly_Low:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    .end local v2           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v5           #style:Landroid/text/style/CharacterStyle;
    :cond_5
    :goto_5
    return-void

    .line 165
    .restart local v2       #formatted:Landroid/text/SpannableStringBuilder;
    .restart local v5       #style:Landroid/text/style/CharacterStyle;
    :cond_6
    const/16 v7, 0x64

    if-ge p1, v7, :cond_7

    .line 166
    const/4 v7, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x22

    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 169
    :cond_7
    const/4 v7, 0x3

    const/4 v8, 0x4

    const/16 v9, 0x22

    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 180
    :cond_8
    const/16 v7, 0x10

    if-ge p1, v7, :cond_9

    .line 181
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly_Plugged:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly_Low:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 185
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly_Plugged:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly_Low:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 190
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly_Plugged:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly_Low:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method private updateSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 218
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "statusbar_battery_icon"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStyle:I

    .line 221
    sget v1, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStyle:I

    packed-switch v1, :pswitch_data_0

    .line 259
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryController;->setVisibility(I)V

    .line 266
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPlugged:Z

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->setBatteryIcon(IZ)V

    .line 268
    return-void

    .line 223
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryController;->setVisibility(I)V

    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryController;->setVisibility(I)V

    goto :goto_0

    .line 235
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryController;->setVisibility(I)V

    goto :goto_0

    .line 241
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryController;->setVisibility(I)V

    goto :goto_0

    .line 247
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->setVisibility(I)V

    goto :goto_0

    .line 253
    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryController;->setVisibility(I)V

    goto :goto_0

    .line 221
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
    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->init()V

    .line 81
    const v1, 0x7f0d011e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryGroup:Landroid/view/ViewGroup;

    .line 82
    const v1, 0x7f0d0044

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:Landroid/widget/ImageView;

    .line 83
    const v1, 0x7f0d00ab

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryText:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f0d0120

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryCenterText:Landroid/widget/TextView;

    .line 85
    const v1, 0x7f0d0121

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f0d0122

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly_Low:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f0d0123

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly_Plugged:Landroid/widget/TextView;

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->addIconView(Landroid/widget/ImageView;)V

    .line 90
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;)V

    .line 91
    .local v0, settingsObserver:Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->observe()V

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateSettings()V

    .line 94
    return-void
.end method
