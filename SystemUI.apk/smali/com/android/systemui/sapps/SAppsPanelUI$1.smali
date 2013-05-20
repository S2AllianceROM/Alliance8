.class Lcom/android/systemui/sapps/SAppsPanelUI$1;
.super Landroid/content/BroadcastReceiver;
.source "SAppsPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sapps/SAppsPanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sapps/SAppsPanelUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$1;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 166
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 169
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$1;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    #setter for: Lcom/android/systemui/sapps/SAppsPanelUI;->isDeviceBootedFirstTime:Z
    invoke-static {v1, v3}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$002(Lcom/android/systemui/sapps/SAppsPanelUI;Z)Z

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$1;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/sapps/SAppsPanelUI;->closeSAppsPanel(Z)V

    goto :goto_0

    .line 175
    :cond_3
    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    invoke-static {}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    const-string v1, "SAppsPanelUI"

    const-string v2, " Intent Received: Open/Close SAppsTray :: "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$1;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    #calls: Lcom/android/systemui/sapps/SAppsPanelUI;->launchSPenApps(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$200(Lcom/android/systemui/sapps/SAppsPanelUI;Landroid/content/Intent;)V

    goto :goto_0

    .line 179
    :cond_5
    const-string v1, "android.intent.action.SET_FACTORY_SIM_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$1;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    #setter for: Lcom/android/systemui/sapps/SAppsPanelUI;->isFactorySimMode:Z
    invoke-static {v1, v3}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$302(Lcom/android/systemui/sapps/SAppsPanelUI;Z)Z

    goto :goto_0
.end method
