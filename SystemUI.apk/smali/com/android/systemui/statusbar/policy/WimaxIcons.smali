.class Lcom/android/systemui/statusbar/policy/WimaxIcons;
.super Ljava/lang/Object;
.source "WimaxIcons.java"


# static fields
.field static final DATA_IN:I

.field static final DATA_INOUT:I

.field static final DATA_NONE:I

.field static final DATA_OUT:I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIMAX_DISCONNECTED:I

.field static final WIMAX_IDLE:I

.field static final WIMAX_SCANNING_ANIM:I

.field static final WIMAX_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    .line 25
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v1

    aget v0, v0, v1

    sput v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    .line 28
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    sput v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    .line 34
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v1

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIFI_LEVEL_COUNT:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
