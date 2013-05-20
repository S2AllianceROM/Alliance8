.class public Lcom/alliance/systemui/quickpanel/Brightness;
.super Landroid/widget/LinearLayout;
.source "Brightness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;
    }
.end annotation


# static fields
.field private static SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;


# instance fields
.field private mAuto:Landroid/widget/CheckBox;

.field mHandler:Landroid/os/Handler;

.field mObserver:Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private power:Landroid/os/IPowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/alliance/systemui/quickpanel/Brightness;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;

    invoke-direct {v0, p0}, Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;-><init>(Lcom/alliance/systemui/quickpanel/Brightness;)V

    iput-object v0, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mObserver:Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mResolver:Landroid/content/ContentResolver;

    .line 32
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alliance/systemui/quickpanel/Brightness;->power:Landroid/os/IPowerManager;

    .line 33
    const/high16 v0, 0x503

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/alliance/systemui/quickpanel/Brightness;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mAuto:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alliance/systemui/quickpanel/Brightness;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-static {p0}, Lcom/alliance/systemui/quickpanel/Brightness;->getBrightness(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/alliance/systemui/quickpanel/Brightness;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/Brightness;->isAutomaticModeSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/alliance/systemui/quickpanel/Brightness;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/Brightness;->isBrightnessSetToAutomatic()Z

    move-result v0

    return v0
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, brightness:I
    add-int/lit8 v1, v0, -0xa

    mul-int/lit8 v1, v1, 0x64

    div-int/lit16 v1, v1, 0xf5

    return v1
.end method

.method public static getShowBrightness(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "brightness_adjust_in_expand_status_bar"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAutomaticModeSupported()Z
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/alliance/systemui/quickpanel/Brightness;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/alliance/systemui/quickpanel/Brightness;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alliance/systemui/quickpanel/Brightness;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    .line 138
    :cond_0
    :goto_0
    sget-object v0, Lcom/alliance/systemui/quickpanel/Brightness;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 134
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alliance/systemui/quickpanel/Brightness;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private isBrightnessSetToAutomatic()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 120
    .local v0, brightnessMode:I
    if-ne v0, v2, :cond_0

    .line 124
    .end local v0           #brightnessMode:I
    :goto_0
    return v2

    .restart local v0       #brightnessMode:I
    :cond_0
    move v2, v3

    .line 120
    goto :goto_0

    .line 122
    .end local v0           #brightnessMode:I
    :catch_0
    move-exception v1

    .line 123
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 124
    goto :goto_0
.end method

.method private registerObiserver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mObserver:Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mObserver:Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 102
    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "brightness_adjust_in_expand_status_bar"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mObserver:Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected adjustBrightness(IZ)V
    .locals 1
    .parameter "brightness"
    .parameter "auto"

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alliance/systemui/quickpanel/Brightness;->adjustBrightness(IZZ)V

    .line 143
    return-void
.end method

.method protected adjustBrightness(IZZ)V
    .locals 5
    .parameter "brightness"
    .parameter "auto"
    .parameter "write"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/alliance/systemui/quickpanel/Brightness;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 148
    .local v0, context:Landroid/content/Context;
    :try_start_0
    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/Brightness;->power:Landroid/os/IPowerManager;

    if-eqz v2, :cond_0

    .line 149
    if-eqz p2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/Brightness;->isAutomaticModeSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    :cond_2
    mul-int/lit16 v2, p1, 0xf5

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v1, v2, 0xa

    .line 161
    .local v1, realBrightness:I
    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/Brightness;->power:Landroid/os/IPowerManager;

    invoke-interface {v2, v1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 163
    if-eqz p3, :cond_0

    .line 164
    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    .end local v1           #realBrightness:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 37
    const v0, 0x5060002

    invoke-virtual {p0, v0}, Lcom/alliance/systemui/quickpanel/Brightness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mSeekBar:Landroid/widget/SeekBar;

    .line 38
    const v0, 0x5060003

    invoke-virtual {p0, v0}, Lcom/alliance/systemui/quickpanel/Brightness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mAuto:Landroid/widget/CheckBox;

    .line 40
    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mAuto:Landroid/widget/CheckBox;

    new-instance v1, Lcom/alliance/systemui/quickpanel/Brightness$1;

    invoke-direct {v1, p0}, Lcom/alliance/systemui/quickpanel/Brightness$1;-><init>(Lcom/alliance/systemui/quickpanel/Brightness;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/alliance/systemui/quickpanel/Brightness$2;

    invoke-direct {v1, p0}, Lcom/alliance/systemui/quickpanel/Brightness$2;-><init>(Lcom/alliance/systemui/quickpanel/Brightness;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/Brightness;->mObserver:Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;->onChange(Z)V

    .line 64
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/Brightness;->registerObiserver()V

    .line 65
    return-void
.end method
