.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_5_LEVEL_CONNECTION_STRENGTH:[I

.field static final DATA_6_LEVEL_CONNECTION_STRENGTH:[I

.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x6

    const/4 v1, 0x5

    .line 14
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 23
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    .line 32
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 52
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_5_LEVEL_CONNECTION_STRENGTH:[I

    .line 61
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_6_LEVEL_CONNECTION_STRENGTH:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 79
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    return-void

    .line 14
    :array_0
    .array-data 0x4
        0xa7t 0x0t 0xat 0x7ft
        0xa8t 0x0t 0xat 0x7ft
        0xa9t 0x0t 0xat 0x7ft
        0xaat 0x0t 0xat 0x7ft
        0xadt 0x0t 0xat 0x7ft
    .end array-data

    .line 23
    :array_1
    .array-data 0x4
        0xa7t 0x0t 0xat 0x7ft
        0xa8t 0x0t 0xat 0x7ft
        0xa9t 0x0t 0xat 0x7ft
        0xaat 0x0t 0xat 0x7ft
        0xabt 0x0t 0xat 0x7ft
        0xadt 0x0t 0xat 0x7ft
    .end array-data

    .line 32
    :array_2
    .array-data 0x4
        0xa7t 0x0t 0xat 0x7ft
        0xa8t 0x0t 0xat 0x7ft
        0xa9t 0x0t 0xat 0x7ft
        0xaat 0x0t 0xat 0x7ft
        0xabt 0x0t 0xat 0x7ft
        0xact 0x0t 0xat 0x7ft
        0xadt 0x0t 0xat 0x7ft
    .end array-data

    .line 43
    :array_3
    .array-data 0x4
        0xaet 0x0t 0xat 0x7ft
        0xaft 0x0t 0xat 0x7ft
        0xb0t 0x0t 0xat 0x7ft
        0xb1t 0x0t 0xat 0x7ft
        0xb4t 0x0t 0xat 0x7ft
    .end array-data

    .line 52
    :array_4
    .array-data 0x4
        0xaet 0x0t 0xat 0x7ft
        0xaft 0x0t 0xat 0x7ft
        0xb0t 0x0t 0xat 0x7ft
        0xb1t 0x0t 0xat 0x7ft
        0xb2t 0x0t 0xat 0x7ft
        0xb4t 0x0t 0xat 0x7ft
    .end array-data

    .line 61
    :array_5
    .array-data 0x4
        0xaet 0x0t 0xat 0x7ft
        0xaft 0x0t 0xat 0x7ft
        0xb0t 0x0t 0xat 0x7ft
        0xb1t 0x0t 0xat 0x7ft
        0xb2t 0x0t 0xat 0x7ft
        0xb3t 0x0t 0xat 0x7ft
        0xb4t 0x0t 0xat 0x7ft
    .end array-data

    .line 72
    :array_6
    .array-data 0x4
        0xb5t 0x0t 0xat 0x7ft
        0xb6t 0x0t 0xat 0x7ft
        0xb7t 0x0t 0xat 0x7ft
        0xb8t 0x0t 0xat 0x7ft
        0xb9t 0x0t 0xat 0x7ft
    .end array-data

    .line 79
    :array_7
    .array-data 0x4
        0xbat 0x0t 0xat 0x7ft
        0xbbt 0x0t 0xat 0x7ft
        0xbct 0x0t 0xat 0x7ft
        0xbdt 0x0t 0xat 0x7ft
        0xbet 0x0t 0xat 0x7ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
