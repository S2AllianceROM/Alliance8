.class Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker$1;
.super Landroid/os/AsyncTask;
.source "NfcButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker;

.field final synthetic val$adapter:Landroid/nfc/NfcAdapter;

.field final synthetic val$desiredState:Z


# direct methods
.method constructor <init>(Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker;ZLandroid/nfc/NfcAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker$1;->this$0:Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker;

    iput-boolean p2, p0, Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker$1;->val$desiredState:Z

    iput-object p3, p0, Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker$1;->val$adapter:Landroid/nfc/NfcAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "args"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker$1;->val$desiredState:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker$1;->val$adapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 51
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker$1;->val$adapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method
