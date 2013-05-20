.class Lcom/android/systemui/sapps/SAppsPanelUI$2;
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
    .line 187
    iput-object p1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$2;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, packageName:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    const-string v2, "SAppsPanelUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Intent Received: ACTION_PACKAGE_CHANGED :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/sapps/SAppsPanelUI$2;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    #getter for: Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;
    invoke-static {v2}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$400(Lcom/android/systemui/sapps/SAppsPanelUI;)Lcom/android/systemui/sapps/SAppsPanel;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/sapps/SAppsPanelUI$2;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    #getter for: Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;
    invoke-static {v2}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$400(Lcom/android/systemui/sapps/SAppsPanelUI;)Lcom/android/systemui/sapps/SAppsPanel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/sapps/SAppsPanel;->isPanelApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/android/systemui/sapps/SAppsPanelUI$2;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    #getter for: Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;
    invoke-static {v2}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$400(Lcom/android/systemui/sapps/SAppsPanelUI;)Lcom/android/systemui/sapps/SAppsPanel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/sapps/SAppsPanel;->refreshAppTray()V

    .line 197
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanelUI$2;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    #getter for: Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;
    invoke-static {v3}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$400(Lcom/android/systemui/sapps/SAppsPanelUI;)Lcom/android/systemui/sapps/SAppsPanel;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 198
    iget-object v2, p0, Lcom/android/systemui/sapps/SAppsPanelUI$2;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    #calls: Lcom/android/systemui/sapps/SAppsPanelUI;->initTray()V
    invoke-static {v2}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$500(Lcom/android/systemui/sapps/SAppsPanelUI;)V

    .line 201
    .end local v1           #packageName:Ljava/lang/String;
    :cond_1
    return-void
.end method
