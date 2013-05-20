.class Lcom/android/systemui/multiwindow/CenterBarWindow$2;
.super Landroid/content/BroadcastReceiver;
.source "CenterBarWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/CenterBarWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/CenterBarWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 245
    const-string v1, "FlashBarService"

    const-string v2, "mCenterBarFocusDisplayReceiver : onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, action:Ljava/lang/String;
    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->ACTION_NOTIFY_FOCUS_WINDOWS:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    sget-object v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->EXTRA_ARRANGE_TYPE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I
    invoke-static {v1, v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$002(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 249
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$2;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBarArrow()V

    .line 251
    :cond_0
    return-void
.end method
