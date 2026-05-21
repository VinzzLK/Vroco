.class public Lcom/miui/home/launcher/TextSizeScale;
.super Ljava/lang/Object;
.source "TextSizeScale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/TextSizeScale$Holder;
    }
.end annotation


# static fields
.field private static final SPECIAL_LANG:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "bo-CN"

    const-string/jumbo v1, "ug-CN"

    .line 22
    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/TextSizeScale;->SPECIAL_LANG:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCurrentFontScale()F
    .locals 0

    .line 33
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/autodensity/DensityConfigManager;->isAutoDensityEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 34
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/autodensity/DensityConfigManager;->getOriginConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 35
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/autodensity/DensityConfigManager;->getOriginConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object p0

    iget p0, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    return p0

    .line 41
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_1

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 46
    :goto_0
    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    return p0
.end method

.method public static getInstance()Lcom/miui/home/launcher/TextSizeScale;
    .locals 1

    .line 29
    invoke-static {}, Lcom/miui/home/launcher/TextSizeScale$Holder;->access$000()Lcom/miui/home/launcher/TextSizeScale;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getShortcutTitleScale()F
    .locals 6

    .line 50
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAccessibilityDisplaySizeLarge()Z

    move-result v0

    const v1, 0x3f933333    # 1.15f

    const/high16 v2, 0x3fa00000    # 1.25f

    if-eqz v0, :cond_1

    .line 51
    sget-object p0, Lcom/miui/home/launcher/TextSizeScale;->SPECIAL_LANG:Ljava/util/Set;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v2

    .line 56
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAccessibilityDisplaySizeSmall()Z

    move-result v0

    const v3, 0x3f666666    # 0.9f

    if-eqz v0, :cond_2

    return v3

    .line 60
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/TextSizeScale;->getCurrentFontScale()F

    move-result p0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getShortcutTitleScale--before fontScale = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TextSizeScale"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v0, p0, v2

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, p0

    .line 66
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/TextSizeScale;->SPECIAL_LANG:Ljava/util/Set;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    cmpl-float v0, p0, v1

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    cmpg-float p0, p0, v3

    if-gez p0, :cond_5

    goto :goto_2

    :cond_5
    move v3, v1

    .line 72
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getShortcutTitleScale--after titleScale = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method
