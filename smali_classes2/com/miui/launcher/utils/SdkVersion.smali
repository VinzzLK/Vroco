.class public Lcom/miui/launcher/utils/SdkVersion;
.super Ljava/lang/Object;
.source "SdkVersion.java"


# static fields
.field public static final ATLEAST_LOLLIPOP_MR1:Z

.field public static final ATLEAST_MARSHMALLOW:Z

.field public static final ATLEAST_NOUGAT:Z

.field public static final ATLEAST_NOUGAT_MR1:Z

.field public static final ATLEAST_OREO:Z

.field public static final ATLEAST_OREO_MR1:Z

.field public static final ATLEAST_P:Z

.field public static final ATLEAST_Q:Z

.field public static final ATLEAST_R:Z

.field public static final ATLEAST_S:Z

.field public static final ATLEAST_T:Z

.field public static final ATLEAST_U:Z

.field public static final ATLEAST_V:Z

.field public static final ATLEAST_W:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x24

    if-lt v0, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    sput-boolean v3, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_W:Z

    const/16 v3, 0x23

    if-lt v0, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 8
    :goto_1
    sput-boolean v3, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_V:Z

    const/16 v3, 0x22

    if-lt v0, v3, :cond_2

    move v1, v2

    .line 10
    :cond_2
    sput-boolean v1, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_U:Z

    .line 12
    sput-boolean v2, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_T:Z

    .line 14
    sput-boolean v2, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_S:Z

    .line 16
    sput-boolean v2, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_R:Z

    .line 18
    sput-boolean v2, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_Q:Z

    .line 20
    sput-boolean v2, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_P:Z

    .line 22
    sput-boolean v2, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_OREO_MR1:Z

    .line 25
    sput-boolean v2, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_OREO:Z

    .line 28
    sput-boolean v2, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_NOUGAT_MR1:Z

    .line 31
    sput-boolean v2, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_NOUGAT:Z

    .line 34
    sput-boolean v2, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_MARSHMALLOW:Z

    .line 37
    sput-boolean v2, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_LOLLIPOP_MR1:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
