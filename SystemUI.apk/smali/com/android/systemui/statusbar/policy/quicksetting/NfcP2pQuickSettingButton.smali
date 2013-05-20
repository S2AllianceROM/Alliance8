.class public Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "NfcP2pQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# instance fields
.field private isNfcTurningOn:Z

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 30
    const v3, 0x7f0a00fd

    const v4, 0x7f0201da

    const v5, 0x7f0201d9

    const v6, 0x7f0201d8

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 17
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 18
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->isNfcTurningOn:Z

    .line 20
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->handleStateChanged(I)I

    move-result v0

    return v0
.end method

.method private handleStateChanged(I)I
    .locals 6
    .parameter "state"

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v0, 0x2

    .line 43
    const-string v3, "STATUSBAR-QuickSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NFC handleStateChanged state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v3, "nfc"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_1

    .line 46
    const-string v1, "STATUSBAR-QuickSettingButton"

    const-string v2, "NFC Service is not ready - handleStateChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 50
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v3, :cond_2

    .line 51
    const-string v3, "STATUSBAR-QuickSettingButton"

    const-string v4, "mNfcAdapter is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 55
    :cond_2
    packed-switch p1, :pswitch_data_0

    move v0, v2

    .line 86
    goto :goto_0

    .line 57
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->isNfcTurningOn:Z

    if-eqz v0, :cond_4

    .line 58
    const-string v0, "STATUSBAR-QuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NFC handleStateChanged - isNfcTurningOn = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->isNfcTurningOn:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 61
    const-string v0, "STATUSBAR-QuickSettingButton"

    const-string v1, "NFC handleStateChanged - Enable Android Beam"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->isNfcTurningOn:Z

    .line 65
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->isNfcTurningOn:Z

    if-eqz v2, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 75
    const-string v0, "STATUSBAR-QuickSettingButton"

    const-string v2, "NFC handleStateChanged - Enable Android Beam-STATE_CARD_MODE_ON"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v1

    .line 77
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 83
    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 93
    const-string v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    const-string v0, "STATUSBAR-QuickSettingButton"

    const-string v1, "NFC Service is not ready - init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 101
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->setActivateStatus(I)V

    .line 105
    :goto_1
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->handleStateChanged(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->setActivateStatus(I)V

    goto :goto_1
.end method

.method public onClick(Z)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    .line 112
    const-string v1, "STATUSBAR-QuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NfcP2P  onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 115
    const-string v1, "STATUSBAR-QuickSettingButton"

    const-string v2, "NFC Service is not ready - onClick"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    .line 120
    const-string v1, "STATUSBAR-QuickSettingButton"

    const-string v2, "mNfcAdapter is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    .line 122
    const-string v1, "STATUSBAR-QuickSettingButton"

    const-string v2, "mNfcAdapter is still null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    .line 129
    .local v0, nfcState:I
    if-eqz p1, :cond_4

    .line 130
    const-string v1, "STATUSBAR-QuickSettingButton"

    const-string v2, "NFC activate()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->isNfcTurningOn:Z

    .line 133
    if-ne v0, v4, :cond_2

    .line 134
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 135
    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto :goto_0

    .line 138
    :cond_3
    const-string v1, "STATUSBAR-QuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid NFC state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->isNfcTurningOn:Z

    goto :goto_0

    .line 142
    :cond_4
    const-string v1, "STATUSBAR-QuickSettingButton"

    const-string v2, "NFC deactivate()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 144
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 146
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto :goto_0

    .line 148
    :cond_6
    const-string v1, "STATUSBAR-QuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid NFC state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "STATUSBAR-QuickSettingButton"

    const-string v1, "onLongClick is not implemented ask Settings team for the activity."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$NfcSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method
