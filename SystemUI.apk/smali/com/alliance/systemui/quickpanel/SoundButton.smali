.class public Lcom/alliance/systemui/quickpanel/SoundButton;
.super Lcom/alliance/systemui/quickpanel/PowerButton;
.source "SoundButton.java"


# static fields
.field public static AUDIO_MANAGER:Landroid/media/AudioManager; = null

.field public static final CM_MODE_SOUNDVIB_SOUND_VIB_SILENT:I = 0x5

.field public static final CM_MODE_SOUNDVIB_VIB:I = 0x0

.field public static final CM_MODE_SOUNDVIB_VIB_SILENT:I = 0x3

.field public static final CM_MODE_SOUND_SILENT:I = 0x2

.field public static final CM_MODE_SOUND_VIB:I = 0x1

.field public static final CM_MODE_SOUND_VIB_SILENT:I = 0x4

.field public static final CM_MODE_VIB_SILENT:I = 0x6

.field public static final RINGER_MODE_SILENT:I = 0x1

.field public static final RINGER_MODE_SOUND_AND_VIBRATE:I = 0x4

.field public static final RINGER_MODE_SOUND_ONLY:I = 0x3

.field public static final RINGER_MODE_UNKNOWN:I = 0x0

.field public static final RINGER_MODE_VIBRATE_ONLY:I = 0x2

.field public static final VIBRATE_DURATION:I = 0x1f4

.field public static VIBRATOR:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/alliance/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    .line 34
    sput-object v0, Lcom/alliance/systemui/quickpanel/SoundButton;->VIBRATOR:Landroid/os/Vibrator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleSound"

    iput-object v0, p0, Lcom/alliance/systemui/quickpanel/SoundButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getCurrentCMMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_ring_mode"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getSoundState(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 194
    invoke-static {p0}, Lcom/alliance/systemui/quickpanel/SoundButton;->initServices(Landroid/content/Context;)V

    .line 196
    sget-object v5, Lcom/alliance/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 197
    .local v0, ringMode:I
    sget-object v5, Lcom/alliance/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    .line 199
    .local v1, vibrateMode:I
    if-ne v0, v2, :cond_1

    if-ne v1, v3, :cond_1

    .line 200
    const/4 v2, 0x4

    .line 208
    :cond_0
    :goto_0
    return v2

    .line 201
    :cond_1
    if-ne v0, v2, :cond_2

    .line 202
    const/4 v2, 0x3

    goto :goto_0

    .line 203
    :cond_2
    if-eq v0, v3, :cond_0

    .line 205
    if-nez v0, :cond_3

    move v2, v3

    .line 206
    goto :goto_0

    :cond_3
    move v2, v4

    .line 208
    goto :goto_0
.end method

.method private static hapticFeedbackEnabled(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "expanded_haptic_feedback"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 253
    .local v2, hfPwrWidg:I
    if-ne v2, v6, :cond_1

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_enabled"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 258
    .local v1, hfGlobl:I
    if-ne v1, v0, :cond_0

    .line 263
    .end local v1           #hfGlobl:I
    .local v0, hf:Z
    :goto_0
    return v0

    .end local v0           #hf:Z
    .restart local v1       #hfGlobl:I
    :cond_0
    move v0, v3

    .line 258
    goto :goto_0

    .line 260
    .end local v1           #hfGlobl:I
    :cond_1
    if-ne v2, v0, :cond_2

    .restart local v0       #hf:Z
    :goto_1
    goto :goto_0

    .end local v0           #hf:Z
    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method private static initServices(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 213
    sget-object v0, Lcom/alliance/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 214
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/alliance/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    .line 216
    :cond_0
    sget-object v0, Lcom/alliance/systemui/quickpanel/SoundButton;->VIBRATOR:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 217
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lcom/alliance/systemui/quickpanel/SoundButton;->VIBRATOR:Landroid/os/Vibrator;

    .line 219
    :cond_1
    return-void
.end method

.method private supports(I)Z
    .locals 7
    .parameter "ringerMode"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x5

    const/4 v1, 0x1

    .line 159
    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alliance/systemui/quickpanel/SoundButton;->getCurrentCMMode(Landroid/content/Context;)I

    move-result v0

    .line 161
    .local v0, currentMode:I
    packed-switch p1, :pswitch_data_0

    .line 189
    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 163
    :pswitch_0
    if-eq v0, v6, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v3, :cond_1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 170
    :pswitch_1
    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v3, :cond_1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 178
    :pswitch_2
    if-eq v0, v1, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 184
    :pswitch_3
    if-eqz v0, :cond_1

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static updateSettings(Landroid/content/Context;IIIZ)V
    .locals 3
    .parameter "context"
    .parameter "vibrateInSilence"
    .parameter "amVibrateSetting"
    .parameter "amRingerMode"
    .parameter "doHapticFeedback"

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_in_silent"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    sget-object v0, Lcom/alliance/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 234
    sget-object v0, Lcom/alliance/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    invoke-virtual {v0, p3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 237
    if-eqz p4, :cond_0

    invoke-static {p0}, Lcom/alliance/systemui/quickpanel/SoundButton;->hapticFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    sget-object v0, Lcom/alliance/systemui/quickpanel/SoundButton;->VIBRATOR:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 240
    :cond_0
    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    return-object v0
.end method

.method protected getText()I
    .locals 2

    .prologue
    const v0, 0x5090008

    .line 267
    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alliance/systemui/quickpanel/SoundButton;->getSoundState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 281
    :goto_0
    :pswitch_0
    return v0

    .line 269
    :pswitch_1
    const v0, 0x5090009

    goto :goto_0

    .line 275
    :pswitch_2
    const v0, 0x509000b

    goto :goto_0

    .line 278
    :pswitch_3
    const v0, 0x509000a

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 154
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 63
    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/alliance/systemui/quickpanel/SoundButton;->getSoundState(Landroid/content/Context;)I

    move-result v1

    .line 67
    .local v1, currentState:I
    invoke-static {v0}, Lcom/alliance/systemui/quickpanel/SoundButton;->initServices(Landroid/content/Context;)V

    .line 69
    packed-switch v1, :pswitch_data_0

    .line 133
    invoke-static {v0, v3, v3, v4, v3}, Lcom/alliance/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    .line 136
    :goto_0
    return-void

    .line 72
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/alliance/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-static {v0, v3, v4, v4, v5}, Lcom/alliance/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0, v4}, Lcom/alliance/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-static {v0, v3, v3, v3, v3}, Lcom/alliance/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-direct {p0, v3}, Lcom/alliance/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    invoke-static {v0, v5, v5, v5, v5}, Lcom/alliance/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {v0, v3, v3, v3, v3}, Lcom/alliance/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 87
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/alliance/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    invoke-static {v0, v3, v4, v3, v3}, Lcom/alliance/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 90
    :cond_3
    invoke-direct {p0, v3}, Lcom/alliance/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    invoke-static {v0, v5, v5, v5, v5}, Lcom/alliance/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 93
    :cond_4
    invoke-direct {p0, v7}, Lcom/alliance/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 94
    invoke-static {v0, v3, v3, v4, v3}, Lcom/alliance/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 97
    :cond_5
    invoke-static {v0, v3, v3, v3, v3}, Lcom/alliance/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 103
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/alliance/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 104
    invoke-static {v0, v5, v5, v5, v5}, Lcom/alliance/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 106
    :cond_6
    invoke-direct {p0, v7}, Lcom/alliance/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 107
    invoke-static {v0, v3, v3, v4, v3}, Lcom/alliance/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 109
    :cond_7
    invoke-direct {p0, v6}, Lcom/alliance/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 110
    invoke-static {v0, v3, v4, v4, v5}, Lcom/alliance/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 113
    :cond_8
    invoke-static {v0, v3, v3, v4, v3}, Lcom/alliance/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 118
    :pswitch_3
    invoke-direct {p0, v7}, Lcom/alliance/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 119
    invoke-static {v0, v3, v3, v4, v3}, Lcom/alliance/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 121
    :cond_9
    invoke-direct {p0, v6}, Lcom/alliance/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 122
    invoke-static {v0, v3, v4, v4, v5}, Lcom/alliance/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 124
    :cond_a
    invoke-direct {p0, v4}, Lcom/alliance/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 125
    invoke-static {v0, v3, v4, v3, v3}, Lcom/alliance/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto/16 :goto_0

    .line 128
    :cond_b
    invoke-static {v0, v3, v3, v4, v3}, Lcom/alliance/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto/16 :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateState()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 40
    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alliance/systemui/quickpanel/SoundButton;->getSoundState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 42
    :pswitch_0
    const v0, 0x502007a

    iput v0, p0, Lcom/alliance/systemui/quickpanel/SoundButton;->mIcon:I

    .line 43
    iput v1, p0, Lcom/alliance/systemui/quickpanel/SoundButton;->mState:I

    goto :goto_0

    .line 46
    :pswitch_1
    const v0, 0x5020079

    iput v0, p0, Lcom/alliance/systemui/quickpanel/SoundButton;->mIcon:I

    .line 47
    iput v1, p0, Lcom/alliance/systemui/quickpanel/SoundButton;->mState:I

    goto :goto_0

    .line 50
    :pswitch_2
    const v0, 0x5020089

    iput v0, p0, Lcom/alliance/systemui/quickpanel/SoundButton;->mIcon:I

    .line 51
    iput v2, p0, Lcom/alliance/systemui/quickpanel/SoundButton;->mState:I

    goto :goto_0

    .line 54
    :pswitch_3
    const v0, 0x5020084

    iput v0, p0, Lcom/alliance/systemui/quickpanel/SoundButton;->mIcon:I

    .line 55
    iput v2, p0, Lcom/alliance/systemui/quickpanel/SoundButton;->mState:I

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
