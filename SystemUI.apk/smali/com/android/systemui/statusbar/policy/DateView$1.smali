.class Lcom/android/systemui/statusbar/policy/DateView$1;
.super Landroid/content/BroadcastReceiver;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/DateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DateView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/DateView;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    const/4 v2, 0x0

    #setter for: Lcom/android/systemui/statusbar/policy/DateView;->mUpdateText:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/DateView;->access$002(Lcom/android/systemui/statusbar/policy/DateView;Z)Z

    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    #calls: Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/DateView;->access$100(Lcom/android/systemui/statusbar/policy/DateView;)V

    .line 65
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    const/4 v2, 0x1

    #setter for: Lcom/android/systemui/statusbar/policy/DateView;->mUpdateText:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/DateView;->access$002(Lcom/android/systemui/statusbar/policy/DateView;Z)Z

    .line 63
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    #calls: Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/DateView;->access$100(Lcom/android/systemui/statusbar/policy/DateView;)V

    goto :goto_0
.end method
