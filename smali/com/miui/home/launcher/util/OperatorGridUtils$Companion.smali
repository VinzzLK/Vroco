.class public final Lcom/miui/home/launcher/util/OperatorGridUtils$Companion;
.super Ljava/lang/Object;
.source "OperatorGridUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/util/OperatorGridUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/util/OperatorGridUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final is2LineOperators()Z
    .locals 0

    .line 16
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->IS_AMX_BUILD:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final must2LineTitle()Z
    .locals 3

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/OperatorGridUtils$Companion;->is2LineOperators()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultScale()F

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconScale()F

    move-result v2

    cmpg-float p0, p0, v2

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    .line 36
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->isDefaultFontScale(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public final setMaxLines(Landroid/widget/TextView;)V
    .locals 1

    const-string/jumbo v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/OperatorGridUtils$Companion;->is2LineOperators()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTitleLines()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 p0, 0x0

    const v0, 0x3f6147ae    # 0.88f

    .line 26
    invoke-virtual {p1, p0, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-void
.end method
