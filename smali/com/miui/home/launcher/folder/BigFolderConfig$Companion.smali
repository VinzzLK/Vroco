.class public final Lcom/miui/home/launcher/folder/BigFolderConfig$Companion;
.super Ljava/lang/Object;
.source "BigFolderConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/folder/BigFolderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/folder/BigFolderConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final bigFolderIconHeight(Landroid/content/Context;II)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    .line 39
    invoke-static {p2, p3, p0}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetSizeSpec(IIZ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
