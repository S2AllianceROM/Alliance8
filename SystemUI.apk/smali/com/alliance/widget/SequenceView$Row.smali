.class Lcom/alliance/widget/SequenceView$Row;
.super Ljava/lang/Object;
.source "SequenceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alliance/widget/SequenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Row"
.end annotation


# instance fields
.field public count:I

.field public height:I

.field public index:I

.field final synthetic this$0:Lcom/alliance/widget/SequenceView;

.field public topOffset:I


# direct methods
.method public constructor <init>(Lcom/alliance/widget/SequenceView;IIII)V
    .locals 0
    .parameter
    .parameter "i"
    .parameter "h"
    .parameter "t"
    .parameter "c"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alliance/widget/SequenceView$Row;->this$0:Lcom/alliance/widget/SequenceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p2, p0, Lcom/alliance/widget/SequenceView$Row;->index:I

    .line 59
    iput p3, p0, Lcom/alliance/widget/SequenceView$Row;->height:I

    .line 60
    iput p4, p0, Lcom/alliance/widget/SequenceView$Row;->topOffset:I

    .line 61
    iput p5, p0, Lcom/alliance/widget/SequenceView$Row;->count:I

    .line 62
    return-void
.end method
