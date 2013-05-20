.class Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$1;
.super Landroid/database/ContentObserver;
.source "QuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 247
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 249
    .local v0, provisioned:Z
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;Z)Z

    .line 252
    :cond_1
    return-void
.end method
