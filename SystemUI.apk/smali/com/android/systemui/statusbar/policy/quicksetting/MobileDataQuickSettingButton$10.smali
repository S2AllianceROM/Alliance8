.class Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$10;
.super Ljava/lang/Object;
.source "MobileDataQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->onORGDisplayMobileDataOffAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$10;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "unused"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$10;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$10;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z

    move-result v1

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->updateActivateStatus(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)V

    .line 413
    return-void
.end method
