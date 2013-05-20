.class Lcom/android/systemui/statusbar/policy/DateView$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/DateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DateView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DateView;)V
    .locals 1
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView$FormatChangeObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 176
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView$FormatChangeObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    #calls: Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/DateView;->access$100(Lcom/android/systemui/statusbar/policy/DateView;)V

    .line 181
    return-void
.end method
